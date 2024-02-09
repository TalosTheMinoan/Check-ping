RegisterCommand("checkping", function()
    TriggerServerEvent("fetchPlayerLatency")
end, false)

RegisterNetEvent("displayPing")
AddEventHandler("displayPing", function(latency)
    local ping = latency * 2
    local color = GetPingColor(ping)
    local message = string.format(Config.ChatMessageFormat, ping)

    TriggerEvent("chat:addMessage", {color = color, multiline = true, args = {message}})
end)

function GetPingColor(ping)
    if ping <= 100 then
        return Config.GoodPingColor
    elseif ping <= 200 then
        return Config.MediumPingColor
    else
        return Config.HighPingColor
    end
end
