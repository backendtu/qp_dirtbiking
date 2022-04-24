RegisterNetEvent('qpr:rentBike', function()
    lib.callback('qpr:spawnVehicle', false, function(response)
        if not response then
            lib.notify({
                description = "You don't have enough money!",
                position = 'top',
                type = 'error'
            })  
        end
    end)
end)

local function openContext()
    local elements = {
        ['Sanchez'] = {
            description = 'This motorcycle is designed for use on rough terrain, such as unsurfaced roads or tracks.',
            event = 'qpr:rentBike'
        }
    }

    lib.registerContext({
        id = 'dirtbike_menu',
        title = 'Rent a Dirtbike',
        options = elements
    })

    lib.showContext('dirtbike_menu')
end

CreateThread(function()
    local biker = {`a_m_y_dhill_01`}

    exports["qtarget"]:AddTargetModel(biker, {
        options = {
            {
                icon = "fa-solid fa-motorcycle",
                label = "Speak to Olaf",
                action = function(entity)
                    openContext()
                end
            }
        },
        distance = 3.0
    })
end)
