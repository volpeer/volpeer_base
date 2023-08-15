Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		if IsPedArmed(PlayerPedId(), 4 | 2) and IsControlPressed(0, 25) or IsPedArmed(PlayerPedId(), 4 | 2) and IsControlPressed(0, 24) then
		else
			ShakeGameplayCam("DRUNK_SHAKE", 0.6)
		end
	end
end)
