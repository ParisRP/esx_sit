local ESX = exports.es_extended:getSharedObject()
local nearbyChairs = {}
local targetOptionsAdded = false

-- Initialisation
Citizen.CreateThread(function()
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(100)
    end
    
    -- Ajouter les options ox_target
    AddTargetOptions()
    
    -- Commande
    if Config.Options.enableCommand then
        RegisterCommand(Config.Options.commandName, function()
            ToggleSit()
        end, false)
    end
    
    -- Keybind
    if Config.Options.enableKeybind then
        RegisterKeyMapping(Config.Options.commandName, "S'asseoir/Se lever", 'keyboard', Config.Options.keybind)
    end
    
    print("[esx_sit] Initialisé avec succès")
end)

-- Fonction pour basculer assis/debout
function ToggleSit()
    if isSitting then
        StandUp()
    else
        local chairData = FindNearbySitableObject()
        if chairData then
            SitOnChair(chairData)
        elseif Config.Options.notify then
            ESX.ShowNotification(Config.Locales.no_chair_nearby)
        end
    end
end

-- Ajouter les options ox_target
function AddTargetOptions()
    if targetOptionsAdded then return end
    
    -- Ajouter une option pour chaque modèle
    for modelName, config in pairs(Config.SitableObjects) do
        exports.ox_target:addModel(modelName, {
            {
                name = 'sit_on_chair_' .. modelName,
                label = Config.Locales.sit,
                icon = 'fas fa-chair',
                distance = Config.Options.maxDistance,
                canInteract = function(entity, distance, coords, name)
                    return not isSitting and distance <= Config.Options.maxDistance and not IsChairOccupied(entity)
                end,
                onSelect = function(data)
                    local chairData = {
                        object = data.entity,
                        coords = GetEntityCoords(data.entity),
                        heading = GetEntityHeading(data.entity),
                        model = modelName,
                        config = config
                    }
                    SitOnChair(chairData)
                end
            }
        })
    end
    
    targetOptionsAdded = true
    
    if Config.Options.debug then
        print(("[esx_sit] %d options ox_target ajoutées"):format(table.count(Config.SitableObjects)))
    end
end

-- Vérification automatique de la distance
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        
        if isSitting and currentChair then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            local chairCoords = GetEntityCoords(currentChair)
            local distance = #(playerCoords - chairCoords)
            
            -- Se lever automatiquement si trop loin
            if distance > Config.Options.autoStandUpDistance then
                StandUp()
                if Config.Options.notify then
                    ESX.ShowNotification("Vous vous êtes levé automatiquement")
                end
            end
        end
    end
end)

-- Gestion des événements
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() and isSitting then
        StandUp()
    end
end)

AddEventHandler('esx:onPlayerDeath', function()
    if isSitting then
        StandUp()
    end
end)

-- Table helper function
table.count = function(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end
