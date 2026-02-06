ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Enregistrer une session d'assise
RegisterServerEvent('esx_sit:registerSit')
AddEventHandler('esx_sit:registerSit', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- Optionnel: enregistrer dans la base de données
    -- exports.oxmysql:insert('INSERT INTO player_sits (identifier, model, coords, type, start_time) VALUES (?, ?, ?, ?, ?)', {
    --     xPlayer.identifier,
    --     data.model,
    --     json.encode(data.coords),
    --     data.type,
    --     os.time()
    -- })
    
    -- Debug
    if Config.Options.debug then
        print(("[esx_sit] %s s'est assis sur %s"):format(xPlayer.getName(), data.model))
    end
end)

-- Enregistrer le fait de se lever
RegisterServerEvent('esx_sit:registerStand')
AddEventHandler('esx_sit:registerStand', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- Optionnel: mettre à jour la base de données
    -- exports.oxmysql:update('UPDATE player_sits SET end_time = ?, duration = ? WHERE identifier = ? AND end_time IS NULL ORDER BY id DESC LIMIT 1', {
    --     os.time(),
    --     math.floor(data.duration / 1000),
    --     xPlayer.identifier
    -- })
    
    -- Debug
    if Config.Options.debug then
        print(("[esx_sit] %s s'est levé après %d ms"):format(xPlayer.getName(), data.duration))
    end
end)

-- Version du script
ESX.RegisterServerCallback('esx_sit:getVersion', function(source, cb)
    cb(GetResourceMetadata(GetCurrentResourceName(), 'version', 0))
end)
