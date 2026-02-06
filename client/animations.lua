-- Fonction pour utiliser un scénario GTA
function UseSitScenario(chairType, coords, heading)
    local playerPed = PlayerPedId()
    local scenario = Config.Animations[chairType] and Config.Animations[chairType].scenario or 'PROP_HUMAN_SEAT_CHAIR'
    
    TaskStartScenarioAtPosition(playerPed, scenario, coords.x, coords.y, coords.z, heading, 0, true, true)
    currentScenario = scenario
    
    -- Debug
    if Config.Options.debug then
        print(("[esx_sit] Scénario utilisé: %s"):format(scenario))
    end
end

-- Fonction pour utiliser une animation personnalisée
function UseSitAnimation(chairType)
    local playerPed = PlayerPedId()
    local animations = {
        bench = { dict = 'anim@heists@prison_heistig1_p1_guard_checks_bus', anim = 'loop', flag = 1 },
        chair = { dict = 'timetable@ron@ig_3_couch', anim = 'base', flag = 1 },
        office_chair = { dict = 'timetable@reunited@ig_10', anim = 'base_amanda', flag = 1 },
        armchair = { dict = 'timetable@ron@ig_3_couch', anim = 'base', flag = 1 },
        couch = { dict = 'timetable@ron@ig_3_couch', anim = 'base', flag = 1 }
    }
    
    local anim = animations[chairType] or animations.chair
    
    lib.requestAnimDict(anim.dict, 1000)
    TaskPlayAnim(playerPed, anim.dict, anim.anim, 8.0, -8.0, -1, anim.flag, 0, false, false, false)
end

-- Vérifier si le joueur utilise un scénario
function IsPedUsingScenario(ped, scenario)
    if not ped or not DoesEntityExist(ped) then return false end
    return GetEntityScript(ped, scenario) ~= nil
end
