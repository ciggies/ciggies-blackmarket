local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ciggies-blackmarket:openShop')
AddEventHandler('ciggies-blackmarket:openShop', function ()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", Config.Shopname[k], Config.IllegalStore)
end)


RegisterNetEvent('ciggies-blackmarket:client:menu', function()
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
                event = "ciggies-blackmarket:openShop",
                args = {
                    number = 2,
                    id = 3
                }
            }
        },
    })
end)