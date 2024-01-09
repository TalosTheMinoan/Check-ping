local kickThreshold = 200 -- Adjust this threshold as needed

RegisterCommand('ping', function(source, args, rawCommand)
    local playerPing = GetPlayerPing(source)
    TriggerClientEvent('chatMessage', source, '^5[Ping]^0 Your current ping is: ^2' .. playerPing)

    if playerPing > kickThreshold then
        DropPlayer(source, 'Your ping is too high. Please reconnect with a better connection.')
    end
end, false)
