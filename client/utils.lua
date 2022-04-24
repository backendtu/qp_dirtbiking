-- Map blip
CreateThread(function ()
    blip = AddBlipForCoord(-703.27, 5790.05) -- x & y coordinates
    SetBlipSprite(blip, 661) --  icon 
    SetBlipScale(blip, 0.7) -- size
    SetBlipColour(blip, 0) -- color
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('Activity: Dirtbike') -- name that shows on the map
    EndTextCommandSetBlipName(blip)
end)
