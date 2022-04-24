local entity = nil

local function dirtBikeNpc()
    if not entity then
        for k, v in pairs(Config.NPC) do
            local ped = CreatePed(4, v.model, v.coords, v.heading, true, false)
            entity = NetworkGetNetworkIdFromEntity(ped)
            FreezeEntityPosition(ped, true)
        end
    end
end

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then
        return
    end
    dirtBikeNpc()
end)

AddEventHandler('onResourceStop', function(resourceName)
    if entity then
        if GetCurrentResourceName() ~= resourceName then
            return
        end

        local entity = NetworkGetEntityFromNetworkId(ped)
        DeleteEntity(entity); entity = nil
    end
end)
