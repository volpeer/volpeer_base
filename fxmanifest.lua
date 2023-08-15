fx_version 'adamant'

game 'gta5'

description 'VLRP CORE'

version '1.0.0'

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'client/*.lua',
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/*.lua',
	'config.lua',
	'server/*.lua',
}

lua54 'yes'
