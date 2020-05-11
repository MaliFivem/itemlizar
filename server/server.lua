--     ______   __     ______   ______     __   __     --
--    /\__  _\ /\ \   /\__  _\ /\  __ \   /\ "-.\ \    --
--    \/_/\ \/ \ \ \  \/_/\ \/ \ \  __ \  \ \ \-.  \   --
--       \ \_\  \ \_\    \ \_\  \ \_\ \_\  \ \_\\"\_\  --
--        \/_/   \/_/     \/_/   \/_/\/_/   \/_/ \/_/  --

--//				    server.lua					 --//

local ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) 
    ESX = obj 
end)

RegisterServerEvent('zarat:zariat')
AddEventHandler('zarat:zariat', function()

    local _source   = source 
    local xPlayer   = ESX.GetPlayerFromId(source)

    local zar = xPlayer.getInventoryItem('zaritem').count

    if zar >= 1 then

    TriggerClientEvent('zarat:zarvar', source)

    else 
        TriggerClientEvent('zarat:zaryok', source)
    end

end)

ESX.RegisterUsableItem('zaritem', function(source) 

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('zarat:zarvar', source) 
end)