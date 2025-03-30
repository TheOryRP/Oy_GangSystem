RegisterNetEvent("gangMenu:open")
AddEventHandler("gangMenu:open", function()
    local elements = {
        {label = "📜 Gang Info", value = "info"},
        {label = "📌 Members", value = "members"},
        {label = "💰 Gang Safe", value = "safe"},
        {label = "⚔️ War Zone", value = "war"}
    }

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "gang_menu", {
        title = "Gang Menu",
        align = "top-left",
        elements = elements
    }, function(data, menu)
        if data.current.value == "info" then
            ESX.ShowNotification("Gang info here!")
        elseif data.current.value == "members" then
            ESX.TriggerServerCallback("gangsystem:getMembers", function(members)
                -- Show members
            end)
        elseif data.current.value == "safe" then
            -- Open gang safe
        elseif data.current.value == "war" then
            -- Start war
        end
    end, function(data, menu)
        menu.close()
    end)
end)

RegisterCommand("gangmenu", function()
    TriggerEvent("gangMenu:open")
end, false)
