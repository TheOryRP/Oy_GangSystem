ESX = exports["es_extended"]:getSharedObject()

-- Command to create a new gang
RegisterCommand("creategang", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "superadmin" then
        local gangName = args[1]
        local label = table.concat(args, " ", 2)

        -- Insert gang into the database
        MySQL.Async.execute("INSERT INTO gangs (name, label) VALUES (@name, @label)", {
            ['@name'] = gangName,
            ['@label'] = label
        })

        TriggerClientEvent("esx:showNotification", source, "Gang " .. label .. " created!")
    end
end, false)

-- Command to invite a player to a gang
RegisterCommand("invitegang", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local targetId = tonumber(args[1])

    if targetId then
        local xTarget = ESX.GetPlayerFromId(targetId)
        if xTarget then
            MySQL.Async.execute("INSERT INTO gang_members (identifier, gang) VALUES (@identifier, @gang)", {
                ['@identifier'] = xTarget.identifier,
                ['@gang'] = xPlayer.getJob().name
            })
            TriggerClientEvent("esx:showNotification", targetId, "You have been invited to the gang!")
        end
    end
end, false)
