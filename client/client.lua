--     ______   __     ______   ______     __   __     --
--    /\__  _\ /\ \   /\__  _\ /\  __ \   /\ "-.\ \    --
--    \/_/\ \/ \ \ \  \/_/\ \/ \ \  __ \  \ \ \-.  \   --
--       \ \_\  \ \_\    \ \_\  \ \_\ \_\  \ \_\\"\_\  --
--        \/_/   \/_/     \/_/   \/_/\/_/   \/_/ \/_/  --

--//				    client.lua					 --//

ESX = nil
local PlayersWorking = {}

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)

        Citizen.Wait(5)
    end
end)

RegisterCommand('zarat', function(source, args, rawCommand) 
    TriggerServerEvent('zarat:zariat')
end)

function startAnim(lib, anim) 
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
	end)
end

RegisterNetEvent('zarat:zarvar')
AddEventHandler('zarat:zarvar', function(source, args, rawCommand)

    local number = 0
    local number1 = 0
    number = math.random(1,6)
    number1 = math.random(1,6)
     

    startAnim("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1500)
    ClearPedTasks(GetPlayerPed(-1))
    TriggerServerEvent('3dmezar:shareDisplay', 'Atılan Zar: ' .. number .. '/' ..number1)

end)


RegisterNetEvent('zarat:zaryok')
AddEventHandler('zarat:zaryok', function(source, args, rawCommand)
    exports['mythic_notify']:DoHudText('error', 'Yanında hiç zar yok')
end)
