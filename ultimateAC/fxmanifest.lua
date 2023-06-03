authors 'D3sTeptu, Razvan'
fx_version 'cerulean'
game 'gta5'
lua54 'yes'
onesync_required 'yes'
description "The most advanced free-resource created for FiveM Server Security"

server_scripts {
    "configuration-file.lua",
    "obfuscated.lua"
}

client_script "loader.lua"

ui_page 'index.html'

files {
	'index.html'
}