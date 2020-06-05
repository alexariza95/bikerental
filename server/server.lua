ESX = nil
BikeRental = {}

TriggerEvent('esx:getSharedObject', function(obj)ESX = obj end)

RegisterServerEvent('drp_recreation:bikerental')
AddEventHandler('drp_recreation:bikerental', function(status)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
end)


ESX.RegisterServerCallback('drp_recreation:bikerental', function(source, cb, status)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    if status == "check" then
        cb(has_value(BikeRental, identifier))
    elseif status then
        table.insert(BikeRental, identifier)
        cb(true)
    elseif not status then
        for i = 1, #BikeRental, 1 do
            if BikeRental[i] == identifier then
                table.remove(BikeRental, i)
                break
            end
        end
        cb(false)
    end
end)

function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    
    return false
end