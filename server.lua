RegisterServerEvent("0x:announce", function(bool, title, text1, time)
    TriggerClientEvent("0x:client:openAnnounce", -1, bool, title, text1, time)
end)