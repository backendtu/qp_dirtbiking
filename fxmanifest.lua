-- FX Information --
fx_version   'cerulean'
lua54        'yes'
game         'gta5'

-- Resource Information --
name         'qp_dirtbiking'
author       'Qpr'
version      '1.0.0'
description  'Dirtbiking - Extra activity'

dependencies {
    'ox_lib',
    'qtarget'
}

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'config.lua'
}

client_script 'client/*.lua'
server_script 'server/*.lua'
