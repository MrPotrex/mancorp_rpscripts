fx_version 'cerulean' --'adamant'
game 'gta5'
lua54 'yes'

autor 'Mancorp'
name 'RP Scripts'
description 'Scripts necesarios al 100% para un servidor de Roleplay | 100% necessary scripts for a Roleplay server '
version '1.0.0'

server_scripts {}

client_scripts {
    '@es_extended/locale.lua',
    'client/pausemenu.lua',
    'locales/*.lua'
}

shared_scripts {
    'cfg/cfg.lua',
    
}

exports {}

-- Si tiene archivos png, css, html, etc... Usarlo, si no, no hace falta.
files {}

-- Si tiene alguna interfaz usalo, si no, no.
ui_page {}

-- Si tiene alguna dependencia usalo, si no, no.
dependency {}
