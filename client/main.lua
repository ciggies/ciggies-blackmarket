local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ciggies-buyitems:openShop')
AddEventHandler('ciggies-buyitems:openShop', function ()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "IllegalStore", Config.IllegalStore)
end)


RegisterNetEvent('ciggies-buyitems:client:menu', function()
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "Sketchy Dude?",
            txt = ""
        },
        {
            id = 2,
            header = "Sketchy Dudes Trench Coat",
            txt = "Purchase im Illegal Items",
            params = {
                event = "ciggies-buyitems:openShop",
                args = {
                    number = 2,
                    id = 3
                }
            }
        },
    })
end)