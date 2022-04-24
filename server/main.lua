local ox_inventory = exports.ox_inventory

lib.callback.register('qpr:spawnVehicle', function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local cache = nil

    if xPlayer then
        if ox_inventory:GetItem(src, 'money').count >= Config.dirtbikePrice then
           ox_inventory:RemoveItem(src, 'money', Config.dirtbikePrice)

        local vehicle = CreateVehicle('sanchez', Config.spawnPoint.x, Config.spawnPoint.y, Config.spawnPoint.z, Config.spawnPoint.h, true, true)
            while not DoesEntityExist(vehicle) do 
                Wait(50)
            end

            cache = NetworkGetNetworkIdFromEntity(vehicle)
        else
            cache = false
        end
    else
        cache = false
    end

    while cache == nil do 
        Wait(50)
    end;
    return cache
end)

-- Spawn npc to test renting a bike (use "a_m_y_dhill_01")
lib.addCommand('group.admin', 'debugnpc', function(source, args)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    local entity = CreatePed(0, GetHashKey(args.hash), playerCoords, true, true)
end, {'hash:string'})
