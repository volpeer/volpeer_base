function AddTextEntry(key, value)
  Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  function AddTextEntry(key, value)
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
  end

  CreateThread(function()
    -- Name
    AddTextEntry("FE_THDR_GTAO", "<font face='Roboto Condensed'>~r~RBRP - roleplay")

    -- Main
    AddFontTextEntry("PM_SCR_MAP", "Mapa")
    AddFontTextEntry("PM_SCR_STA", "Status")
    AddFontTextEntry("PM_SCR_GAM", "Hra")
    AddFontTextEntry("PM_SCR_INF", "Informace")
    AddFontTextEntry("PM_SCR_SET", "Nastavení")
    AddFontTextEntry("PM_SCR_GAL", "Galerie")
    AddFontTextEntry("PM_SCR_RPL", "R* Editor")

    -- Game
    AddFontTextEntry("PM_PANE_LEAVE", "~r~Odpojit se")
    AddFontTextEntry("PM_PANE_QUIT", "~r~Vypnout ~w~hru")

    -- Stats
    AddFontTextEntry("MP_STATS1", "Kariera")
    AddFontTextEntry("MP_STATS2", "Skills")
    AddFontTextEntry("MP_STATS3", "General")
    AddFontTextEntry("MP_STATS4", "Vraždy")
    AddFontTextEntry("MP_STATS5", "Vozidlá")
    AddFontTextEntry("MP_STATS6", "Peníze")
    AddFontTextEntry("MP_STATS7", "Strelba")
    AddFontTextEntry("PM_AWARDS", "Odmeny")
    AddFontTextEntry("PM_INF_UNLT", "Odomknutia")
    AddFontTextEntry("PM_WEAPONS", "Zbrane")
    -- Info
    AddFontTextEntry("PM_PANE_FEE", "Notifikace")
    AddFontTextEntry("PM_PANE_HLP", "Pomoc")
    AddFontTextEntry("PM_PANE_BRI", "Dialóg")
    AddFontTextEntry("PM_PANE_MIS", "Misie")

    -- Settings
    AddFontTextEntry("0x92320117", "Ovládač")
    AddFontTextEntry("PM_PANE_AUD", "Zvuk")
    AddFontTextEntry("PM_PANE_CAM", "Kamera")
    AddFontTextEntry("PM_PANE_DIS", "Zobrazeni")
    AddFontTextEntry("MO_VOUT", "Voice chat ingame")
    AddFontTextEntry("0xE782A771", "Rockstar editor")
    AddFontTextEntry("0xFBB6E685", "Pokročilá grafika")
    AddFontTextEntry("0xD3A0C438", "Grafika")
    AddFontTextEntry("0x82FBED04", "Keybinds")
    AddFontTextEntry("0x0A0C22D4", "Klávesnice / Myš")
    AddFontTextEntry("GFX_VIDMEM", "Video paměť")
    AddFontTextEntry("0x51B058B3", "Display")
  end)

  function AddFontTextEntry(entry, text)
    AddTextEntry(entry, setFont(text, 12))
  end

  function setFont(text, size)
    if not size then
      return "<font face='Roboto Condensed'> " .. text .. " </font>"
    else
      return '<font face="Roboto Condensed" size="' .. size .. '">' .. text .. ' </font>'
    end
  end

end)
