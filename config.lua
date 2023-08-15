Config = {} -- Dont touch this
Config.Locale = 'cs'
Config.EnableTH = true
Config.EnableCarry             = true 
Config.EnableCarMenu           = true
Config.FrontCruiseSpeedControl = 11 -- Key to set front speed crusier on
Config.CruiserControl          = 10 -- Key to set Crusier On
Config.OpenCarMenu             = 344 -- Key to open Main (control menu)
Config.minimalCrusierSpeed     = 10 
Config.EnableRag               = true
Config.EnableShuff             = true
Config.EnablePauseMenuText     = true
Config.EnableHideInTrunk       = true
Config.EnableCrouch            = true -- button to crouch
Config.EnableCrouchCMD         = true -- /crouch
Config.CrouchButton            = 36
Config.EnableLuxVehControl     = true -- Vehicle  Sirens
Config.EnableHandsUP           = true -- button to HandsUP
Config.HandsUPButton           = 323 
Config.EnableRecoil            = true
Config.RecoilRifle             = 1000.22
Config.RecoilSMG               = 700.22
Config.RecoilPistol            = 1000.7
Config.EnableVehiclePush       = true
Config.DamageNeeded            = 100.0 -- 100.0 being broken and 1000.0 being fixed a lower value than 100.0 will break it
Config.MaxWidth                = 5.0 -- Will complete soon
Config.MaxHeight               = 5.0
Config.MaxLength               = 5.0
Config.RestrictEmer            = true -- Only allow the feature for emergency vehicles.
Config.LightMultiplier         = 20.0 
Config.EnableRealVehDamage     = true
ConfigVehDamage                = {
	deformationMultiplier = -1, -- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch. Visual damage does not sync well to other players.
	deformationExponent = 0.8, -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 0.9, -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 5.0, -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 5.0, -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 43.0, -- Sane values are 1 to 200. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 0.8, -- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 2.0, -- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 10, -- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 8.0, -- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 800.0, -- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 360.0, -- Below this value, health cascading failure will set in
	engineSafeGuard = 200.0, -- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true, -- Decrease engine torque as engine gets more and more damaged

	limpMode = false, -- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.19, -- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = false, -- If true, you can't turn over an upside down vehicle

	sundayDriver = false, -- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5, -- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0, -- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	compatibilityMode = false, -- prevents other scripts from modifying the fuel tank health to avoid random engine failure with BVA 2.01 (Downside is it disabled explosion prevention)

	randomTireBurstInterval = 0,
	classDamageMultiplier = {
		[0] = 0.25, --	0: Compacts
		0.25, --	1: Sedans
		0.25, --	2: SUVs
		0.25, --	3: Coupes
		0.25, --	4: Muscle
		0.25, --	5: Sports Classics
		0.25, --	6: Sports
		0.25, --	7: Super
		0.25, --	8: Motorcycles
		0.25, --	9: Off-road
		0.25, --	10: Industrial
		0.25, --	11: Utility
		0.25, --	12: Vans
		0.25, --	13: Cycles
		0.25, --	14: Boats
		0.25, --	15: Helicopters
		0.25, --	16: Planes
		0.25, --	17: Service
		0.25, --	18: Emergency
		0.25, --	19: Military
		0.25, --	20: Commercial
		0.25 --	21: Trains
	}
}
Config.EnableTireKnife         = true

Config.PedList = {

	{
		model = `a_m_m_og_boss_01`,
		coords = vector4(307.1509, -216.4348, 54.2199, 340.9537),
		gender = 'male'
	},
}

Config.Weapons = {
	[`WEAPON_UNARMED`] = { model = `WEAPON_UNARMED`, modifier = 0.9, disableCritical = true },
	[`WEAPON_FLASHLIGHT`] = { model = `WEAPON_NIGHTSTICK`, modifier = 0.9, disableCritical = true },
	[`WEAPON_KNIFE`] = { model = `WEAPON_KNIFE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_CARBINERIFLE`] = { model = `WEAPON_CARBINERIFLE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_CARBINERIFLE_MK2`] = { model = `WEAPON_CARBINERIFLE_MK2`, modifier = 0.9, disableCritical = true },
	[`WEAPON_KNUCKLE`] = { model = `WEAPON_KNUCKLE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_NIGHTSTICK`] = { model = `WEAPON_NIGHTSTICK`, modifier = 0.9, disableCritical = true },
	[`WEAPON_HAMMER`] = { model = `WEAPON_HAMMER`, modifier = 0.9, disableCritical = true },
	[`WEAPON_BAT`] = { model = `WEAPON_BAT`, modifier = 0.9, disableCritical = true },
	[`WEAPON_GOLFCLUB`] = { model = `WEAPON_GOLFCLUB`, modifier = 0.9, disableCritical = true },
	[`WEAPON_CROWBAR`] = { model = `WEAPON_CROWBAR`, modifier = 0.9, disableCritical = true },
	[`WEAPON_BOTTLE`] = { model = `WEAPON_BOTTLE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_DAGGER`] = { model = `WEAPON_DAGGER`, modifier = 0.9, disableCritical = true },
	[`WEAPON_HATCHET`] = { model = `WEAPON_HATCHET`, modifier = 0.9, disableCritical = true },
	[`WEAPON_MACHETE`] = { model = `WEAPON_MACHETE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_SWITCHBLADE`] = { model = `WEAPON_SWITCHBLADE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_PROXMINE`] = { model = `WEAPON_PROXMINE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_BZGAS`] = { model = `WEAPON_BZGAS`, modifier = 0.9, disableCritical = true },
	[`WEAPON_SMOKEGRENADE`] = { model = `WEAPON_SMOKEGRENADE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_MOLOTOV`] = { model = `WEAPON_MOLOTOV`, modifier = 0.9, disableCritical = true },
	[`WEAPON_REVOLVER`] = { model = `WEAPON_REVOLVER`, modifier = 0.9, disableCritical = true },
	[`WEAPON_POOLCUE`] = { model = `WEAPON_POOLCUE`, modifier = 0.9, disableCritical = true },
	[`WEAPON_PIPEWRENCH`] = { model = `WEAPON_PIPEWRENCH`, modifier = 0.9, disableCritical = true },
	[`WEAPON_PISTOL`] = { model = `WEAPON_PISTOL`, modifier = 0.9, disableCritical = true },
	[`WEAPON_PISTOL_MK2`] = { model = `WEAPON_PISTOL_MK2`, modifier = 0.7, disableCritical = true },
	[`WEAPON_MACHINEPISTOL`] = { model = `WEAPON_MACHINEPISTOL`, modifier = 0.8, disableCritical = true },
	[`WEAPON_COMBATPISTOL`] = { model = `WEAPON_COMBATPISTOL`, modifier = 0.8, disableCritical = true },
	[`WEAPON_APPISTOL`] = { model = `WEAPON_APPISTOL`, modifier = 0.8, disableCritical = true },
	[`WEAPON_PISTOL50`] = { model = `WEAPON_PISTOL50`, modifier = 0.9, disableCritical = true },
	[`WEAPON_SNSPISTOL_MK2`] = { model = `WEAPON_SNSPISTOL_MK2`, modifier = 0.45, disableCritical = true },
	[`WEAPON_HEAVYPISTOL`] = { model = `WEAPON_HEAVYPISTOL`, modifier = 0.8, disableCritical = true },
	[`WEAPON_VINTAGEPISTOL`] = { model = `WEAPON_VINTAGEPISTOL`, modifier = 0.9, disableCritical = true },
	[`WEAPON_FLAREGUN`] = { model = `WEAPON_FLAREGUN`, modifier = 0.9, disableCritical = true },
	[`WEAPON_MARKSMANPISTOL`] = { model = `WEAPON_MARKSMANPISTOL`, modifier = 0.9, disableCritical = true },
	[`WEAPON_MICROSMG`] = { model = `WEAPON_MICROSMG`, modifier = 0.8, disableCritical = true },
	[`WEAPON_MINISMG`] = { model = `WEAPON_MINISMG`, modifier = 0.8, disableCritical = true },
	[`WEAPON_SMG`] = { model = `WEAPON_SMG`, modifier = 0.17, disableCritical = true },
	[`WEAPON_SMG_MK2`] = { model = `WEAPON_SMG_MK2`, modifier = 0.12, disableCritical = true },
	[`WEAPON_ASSAULTSMG`] = { model = `WEAPON_ASSAULTSMG`, modifier = 0.9, disableCritical = true },
	[`WEAPON_ASSAULTRIFLE`] = { model = `WEAPON_ASSAULTRIFLE`, modifier = 0.8, disableCritical = true },
	[`WEAPON_ASSAULTRIFLE_MK2`] = { model = `WEAPON_ASSAULTRIFLE_MK2`, modifier = 0.8, disableCritical = true },
	[`WEAPON_ASSAULTSHOTGUN`] = { model = `WEAPON_ASSAULTSHOTGUN`, modifier = 0.001, disableCritical = true },
	[`WEAPON_MG`] = { model = `WEAPON_MG`, modifier = 0.9, disableCritical = true },
	[`WEAPON_COMBATMG`] = { model = `WEAPON_COMBATMG`, modifier = 0.9, disableCritical = true },
	[`WEAPON_COMBATMG_MK2`] = { model = `WEAPON_COMBATMG_MK2`, modifier = 0.9, disableCritical = true },
	[`WEAPON_COMBATPDW`] = { model = `WEAPON_COMBATPDW`, modifier = 0.8, disableCritical = true },
	[`WEAPON_PUMPSHOTGUN`] = { model = `WEAPON_PUMPSHOTGUN`, modifier = 0.8, disableCritical = true },
	[`WEAPON_PUMPSHOTGUN_MK2`] = { model = `WEAPON_PUMPSHOTGUN_MK2`, modifier = 0.8, disableCritical = true },
	[`WEAPON_SAWNOFFSHOTGUN`] = { model = `WEAPON_SAWNOFFSHOTGUN`, modifier = 0.01, disableCritical = true },
	[`WEAPON_HEAVYSHOTGUN`] = { model = `WEAPON_HEAVYSHOTGUN`, modifier = 0.8, disableCritical = true },
	[`WEAPON_SPECIALCARBINE`] = { model = `WEAPON_SPECIALCARBINE`, modifier = 0.1, disableCritical = true },
	[`WEAPON_SPECIALCARBINE_MK2`] = { model = `WEAPON_SPECIALCARBINE_MK2`, modifier = 0.9, disableCritical = true },
}
