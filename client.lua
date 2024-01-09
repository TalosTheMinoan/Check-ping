local pingHistory = {}

-- Function to get color based on ping
function GetPingColor(ping)
    if ping < 50 then
        return {0, 255, 0} -- Green
    elseif ping < 100 then
        return {255, 255, 0} -- Yellow
    else
        return {255, 0, 0} -- Red
    end
end

-- Function to display ping with color
function DisplayColorCodedPing(ping)
    local color = GetPingColor(ping)
    TriggerEvent('chatMessage', 'SYSTEM', color, 'Your ping: ' .. ping)
end

-- Function to add ping to history
function AddToPingHistory(ping)
    table.insert(pingHistory, ping)

    -- Keep only the last 10 pings for simplicity
    while #pingHistory > 10 do
        table.remove(pingHistory, 1)
    end

    -- Display the ping graph
    DisplayPingGraph()
end

-- Function to display the ping graph
function DisplayPingGraph()
    local graphText = 'Ping Graph: '

    for _, ping in ipairs(pingHistory) do
        local color = GetPingColor(ping)
        graphText = graphText .. string.format('{#%02x%02x%02x}%d{#ffffff}, ', color[1], color[2], color[3], ping)
    end

    TriggerEvent('chatMessage', 'SYSTEM', {255, 255, 255}, graphText)
end

-- Command to check ping
RegisterCommand('ping', function()
    local ping = GetPlayerPing(PlayerId())
    DisplayColorCodedPing(ping)
    AddToPingHistory(ping)
end, false)
