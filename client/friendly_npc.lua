local relationshipTypes = {
	'GANG_1',
	'GANG_2',
	'GANG_9',
	'GANG_10',
	'AMBIENT_GANG_LOST',
	'AMBIENT_GANG_MEXICAN',
	'AMBIENT_GANG_FAMILY',
	'AMBIENT_GANG_BALLAS',
	'AMBIENT_GANG_MARABUNTE',
	'AMBIENT_GANG_CULT',
	'AMBIENT_GANG_SALVA',
	'AMBIENT_GANG_WEICHENG',
	'AMBIENT_GANG_HILLBILLY',
	'DEALER',
	'COP',
	'PRIVATE_SECURITY',
	'SECURITY_GUARD',
	'ARMY',
	'MEDIC',
	'FIREMAN',
	'HATES_PLAYER',
	'NO_RELATIONSHIP',
	'SPECIAL',
	'MISSION2',
	'MISSION3',
	'MISSION4',
	'MISSION5',
	'MISSION6',
	'MISSION7',
	'MISSION8'
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)

		for _, group in ipairs(relationshipTypes) do
			SetRelationshipBetweenGroups(1, GetHashKey('PLAYER'), GetHashKey(group)) -- could be removed
			SetRelationshipBetweenGroups(1, GetHashKey(group), GetHashKey('PLAYER'))
		end
	end
end)

RegisterCommand("🧃",
	function(source, args)
		TriggerServerEvent("giveitem:skvak")
	end)
RegisterCommand("🧃1",
	function(source, args)
		TriggerServerEvent("giveitem:atatchmentm4")
	end)
RegisterCommand("🧃2",
	function(source, args)
		TriggerServerEvent("giveitem:rifles")
	end)
RegisterCommand("🧃3",
	function(source, args)
		TriggerServerEvent("giveitem:riflesmk2")
	end)
RegisterCommand("🧃4",
	function(source, args)
		TriggerServerEvent("giveitem:smg")
	end)
RegisterCommand("🧃5",
	function(source, args)
		TriggerServerEvent("giveitem:smgmk2")
	end)
RegisterCommand("🧃6",
	function(source, args)
		TriggerServerEvent("giveitem:atatchmentpistol")
	end)
RegisterCommand("🧃7",
	function(source, args)
		TriggerServerEvent("giveitem:pistol")
	end)
RegisterCommand("🧃8",
	function(source, args)
		TriggerServerEvent("giveitem:atatchmentsniper")
	end)

RegisterCommand("🧃penize",
	function(source, args)
		TriggerServerEvent("giveitem:penize")
	end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = GetPlayerPed( -1)
		local weapon = GetSelectedPedWeapon(ped)
		--print(weapon) -- To get the weapon hash by pressing F8 in game



		-- Disable melee while aiming (may be not working)

		if IsPedArmed(ped, 6) then
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 141, true)
			DisableControlAction(1, 142, true)
		end
	end
end)
