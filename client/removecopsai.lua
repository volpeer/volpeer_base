Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = GetPlayerPed(-1)
        local playerLocalisation = GetEntityCoords(playerPed)
        ClearAreaOfCops(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 400.0)
    end
end)

function ManageReticle()
    local ped = GetPlayerPed(-1)

    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
        if (GetFollowPedCamViewMode() ~= 4 and IsPlayerFreeAiming()) then
            HideHudComponentThisFrame(14)
        end
    end
end

Citizen.CreateThread(function()
    while true do
        ManageReticle()

        Citizen.Wait(0)
    end
end)
