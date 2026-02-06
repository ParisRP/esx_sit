local ESX = exports.es_extended:getSharedObject()
local isSitting = false
local currentChair = nil
local currentScenario = nil
local sitStartTime = 0
local lastNotification = 0

-- Fonction pour trouver un siège à proximité
function FindNearbySitableObject()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    
    for modelName, config in pairs(Config.SitableObjects) do
        local modelHash = GetHashKey(modelName)
        local object = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 
            Config.Options.maxDistance, modelHash, false, false, false)
        
        if object and object ~= 0 then
            local objCoords = GetEntityCoords(object)
            local objHeading = GetEntityHeading(object)
            local distance = #(playerCoords - objCoords)
            
            if distance <= Config.Options.maxDistance then
                return {
                    object = object,
                    coords = objCoords,
                    heading = objHeading,
                    model = modelName,
                    config = config
                }
            end
        end
    end
    
    return nil
end

-- Fonction pour obtenir tous les sièges à proximité
function GetAllNearbySitableObjects()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local nearbyChairs = {}
    
    for modelName, config in pairs(Config.SitableObjects) do
        local modelHash = GetHashKey(modelName)
        local object = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 
            Config.Options.maxDistance, modelHash, false, false, false)
        
        if object and object ~= 0 then
            local objCoords = GetEntityCoords(object)
            local distance = #(playerCoords - objCoords)
            
            if distance <= Config.Options.maxDistance then
                table.insert(nearbyChairs, {
                    object = object,
                    coords = objCoords,
                    heading = GetEntityHeading(object),
                    model = modelName,
                    config = config,
                    distance = distance
                })
            end
        end
    end
    
    -- Trier par distance
    table.sort(nearbyChairs, function(a, b)
        return a.distance < b.distance
    end)
    
    return nearbyChairs
end

-- Fonction pour s'asseoir
function SitOnChair(chairData)
    if isSitting then
        if Config.Options.notify then
            ESX.ShowNotification(Config.Locales.already_sitting)
        end
        return false
    end
    
    local playerPed = PlayerPedId()
    
    -- Vérifier si le siège est déjà occupé
    if IsChairOccupied(chairData.object) then
        if Config.Options.notify then
            ESX.ShowNotification("Ce siège est déjà occupé !")
        end
        return false
    end
    
    -- Enregistrer le temps d'assise
    sitStartTime = GetGameTimer()
    
    -- Calculer la position d'assise
    local sitCoords, sitHeading = CalculateSitPosition(chairData)
    
    -- Désactiver les contrôles temporairement
    SetEntityInvincible(playerPed, true)
    
    -- Positionner le joueur
    SetEntityCoords(playerPed, sitCoords.x, sitCoords.y, sitCoords.z)
    SetEntityHeading(playerPed, sitHeading)
    
    -- Utiliser un scénario ou une animation
    if Config.Options.useScenarios then
        UseSitScenario(chairData.config.type, sitCoords, sitHeading)
    else
        UseSitAnimation(chairData.config.type)
    end
    
    -- Mettre à jour l'état
    isSitting = true
    currentChair = chairData.object
    
    -- Enregistrer côté serveur
    TriggerServerEvent('esx_sit:registerSit', {
        model = chairData.model,
        coords = chairData.coords,
        type = chairData.config.type
    })
    
    -- Créer l'option pour se lever
    CreateStandUpOption()
    
    -- Notification
    if Config.Options.notify then
        ESX.ShowNotification(Config.Locales.stand_up_instruction)
    end
    
    -- Debug
    if Config.Options.debug then
        print(("[esx_sit] Assis sur %s (type: %s)"):format(chairData.model, chairData.config.type))
    end
    
    return true
end

-- Fonction pour calculer la position d'assise
function CalculateSitPosition(chairData)
    local objCoords = chairData.coords
    local objHeading = chairData.heading
    local config = chairData.config
    
    -- Appliquer l'offset
    local sitCoords = vector3(
        objCoords.x + config.offset.x,
        objCoords.y + config.offset.y,
        objCoords.z + config.offset.z
    )
    
    -- Calculer le heading
    local sitHeading = objHeading + (config.heading or 0.0)
    
    -- Ajuster la hauteur (vérifier le sol)
    local _, groundZ = GetGroundZFor_3dCoord(sitCoords.x, sitCoords.y, sitCoords.z, false)
    if groundZ then
        sitCoords = vector3(sitCoords.x, sitCoords.y, groundZ + config.offset.z)
    end
    
    return sitCoords, sitHeading
end

-- Fonction pour vérifier si un siège est occupé
function IsChairOccupied(chairObject)
    local players = GetActivePlayers()
    for i = 1, #players do
        local player = players[i]
        local ped = GetPlayerPed(player)
        local pedCoords = GetEntityCoords(ped)
        local chairCoords = GetEntityCoords(chairObject)
        local distance = #(pedCoords - chairCoords)
        
        if distance < 1.0 and IsPedUsingScenario(ped, "PROP_HUMAN_SEAT") then
            return true
        end
    end
    return false
end

-- Fonction pour se lever
function StandUp()
    if not isSitting then return false end
    
    local playerPed = PlayerPedId()
    
    -- Arrêter le scénario ou l'animation
    if currentScenario then
        ClearPedTasks(playerPed)
        currentScenario = nil
    else
        ClearPedTasksImmediately(playerPed)
    end
    
    -- Réactiver les contrôles
    SetEntityInvincible(playerPed, false)
    
    -- Déplacer légèrement pour éviter la collision
    local coords = GetEntityCoords(playerPed)
    local forward = GetEntityForwardVector(playerPed)
    SetEntityCoords(playerPed, coords.x + forward.x * 0.5, coords.y + forward.y * 0.5, coords.z)
    
    -- Réinitialiser l'état
    isSitting = false
    currentChair = nil
    
    -- Supprimer l'option ox_target
    if standUpOption then
        exports.ox_target:removeZone(standUpOption)
        standUpOption = nil
    end
    
    -- Enregistrer côté serveur
    TriggerServerEvent('esx_sit:registerStand', {
        duration = GetGameTimer() - sitStartTime
    })
    
    -- Debug
    if Config.Options.debug then
        print("[esx_sit] Debout")
    end
    
    return true
end

-- Fonction pour créer l'option pour se lever
function CreateStandUpOption()
    if standUpOption then
        exports.ox_target:removeZone(standUpOption)
    end
    
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    
    standUpOption = exports.ox_target:addSphereZone({
        coords = coords,
        radius = 0.5,
        debug = Config.Options.debug,
        options = {
            {
                name = 'stand_up',
                label = Config.Locales.stand_up,
                icon = 'fas fa-chair',
                distance = 1.5,
                onSelect = function()
                    StandUp()
                end
            }
        }
    })
end

-- Export pour d'autres scripts
exports('SitOnNearestChair', function()
    local chairData = FindNearbySitableObject()
    if chairData then
        return SitOnChair(chairData)
    end
    return false
end)

exports('IsSitting', function()
    return isSitting
end)

exports('StandUp', StandUp)

exports('GetNearbyChairs', function()
    return GetAllNearbySitableObjects()
end)
