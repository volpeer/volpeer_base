Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(1095338147526738010) -- Discord ID

		local player = PlayerId()
		local name = GetPlayerName(player)
		local id = GetPlayerServerId(player)
		local players = GetActivePlayers()

		SetRichPresence("Hráči: " .. #players .. "/64 | ID: " .. id)

		SetDiscordRichPresenceAsset("rp_2_") -- Velký obrázek
		SetDiscordRichPresenceAssetText(".gg/RCYFjNjtfw") -- Text na velkém obrázku

		SetDiscordRichPresenceAssetSmall('rp_2_') -- Malý obrázek
		SetDiscordRichPresenceAssetSmallText(".gg/RCYFjNjtfw") -- Text na malém obrázku

		SetDiscordRichPresenceAction(0, "👉|Discord|👉", "https://discord.gg/RCYFjNjtfw")
		SetDiscordRichPresenceAction(1, "💻|Fivem Connect|💻", "https://discord.gg/RCYFjNjtfw")
		Citizen.Wait(10000)
	end
end)
