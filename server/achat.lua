-- ADMIN CHAT
local Group
Streamer = false
ESX = exports["es_extended"]:getSharedObject()

function loadExistingPlayers()
    TriggerEvent("es:getPlayers", function(curPlayers)
        for k, v in pairs(curPlayers) do
            TriggerClientEvent("reply:setGroup", v.get('source'), v.get('group'))
        end
    end)
end

loadExistingPlayers()

AddEventHandler('es:playerLoaded', function(Source, user)
    TriggerClientEvent('reply:setGroup', Source, user.getGroup())
end)

ESX.RegisterServerCallback('esx_chatforadmin:GetGroup', function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        Group = player.getGroup()
        if Group ~= nil then
            cb(Group)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)


-- RegisterCommand("streamermode", function(source, args, rawCommand)
--     disableMusic = not disableMusic
--     if disableMusic then
--         TriggerEvent('chat:addMessage', { args = { "^1[xSound]", config.Messages["streamer_on"] } })

--         for k, v in pairs(soundInfo) do
--             Destroy(v.id)
--         end

--     else
--         TriggerEvent('chat:addMessage', { args = { "^1[xSound]", config.Messages["streamer_off"] } })
--     end
-- end, false)

RegisterCommand('a', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    Group = xPlayer.getGroup()

    if Group ~= 'user' or not Streamer then
        TriggerClientEvent("sendMessageAdmin", -1, xPlayer.getGroup(), GetPlayerName(source), table.concat(args, " "))
    end
end, false)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {};
    i = 1
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

-- LOGS
function sendLogs(message, webhook)
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(webhook, function(err, text, headers)
    end, 'POST', json.encode({ content = message }),
        { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('toDiscord')
AddEventHandler('toDiscord', function(message, webhook)
    sendLogs(message, webhook)
end)
