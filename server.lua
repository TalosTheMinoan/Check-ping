RegisterServerEvent("fetchPlayerLatency")
AddEventHandler("fetchPlayerLatency", function()
    local playerId = source
    local latency = GetPlayerPing(playerId)
    TriggerClientEvent("displayPing", playerId, latency)
end)
