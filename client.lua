Announce = Announce or {}

RegisterNetEvent("0x:client:openAnnounce")
AddEventHandler("0x:client:openAnnounce", function(bool, title, text1, time)
    Announce:cAnnounce(bool, title, text1, time)
end)

function Announce:cAnnounce(bool, title, text1, time)
    SendNUIMessage({
        type = "announce",
        display = bool,
        info = {
            title = title,
            announce = text1,
        },
    })
    Wait(time)
    SendNUIMessage({
        type = "announce",
        display = false,
    })
end

function Announce:sAnnounce(bool, title, text1, time)
    TriggerServerEvent("0x:announce", bool, title, text1, time)
end

exports("announce", function(bool, title, text1, time)
    Announce:cAnnounce(bool, title, text1, time)
end)

exports("sannounce", function(bool, title, text1, time)
    Announce:sAnnounce(bool, title, text1, time)
end)

Prompt = Prompt or {}

Prompt.Show = false
Prompt.Answer = nil

function Prompt:SetDisplay(bool)
    self.Show = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        display = bool,
    })
end

RegisterNUICallback("accept", function(data)
    Prompt:SetDisplay(false)
    Prompt.Answer = data.value
end)

RegisterNUICallback("refuse", function(data)
    Prompt:SetDisplay(false)
    Prompt.Answer = data.value
end)

function Prompt:createPrompt(data, cb)
    Prompt.Show = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "ui",
        display = true,
        info = data,
    })
    local Answer = nil
    while Answer == nil do 
        Citizen.Wait(1)
        RegisterNUICallback("accept", function(data)
            Answer = data.value
            Prompt:SetDisplay(false)
        end)
        if IsJustControlPressed(0, 246) then
            Answer = true
            Prompt:SetDisplay(false)
            break
        end
        if IsJustControlPressed(0, 249) then
            Answer = false
            Prompt:SetDisplay(false)
            break
        end
        RegisterNUICallback("refuse", function(data)
            Answer = data.value
            Prompt:SetDisplay(false)
            Answer = data.value
        end)
        if Answer ~= nil then 
            cb(Answer)
            break
        end
    end
end

exports('createPrompt', function(data, cb)
    Prompt:createPrompt(data, cb)
end)

-- Prompt:createPrompt({title = "", text1 = "", text2 = ""}, function(response)
--     if response then 
--         print("true")
--     else
--         print("false")
--     end
-- end)

