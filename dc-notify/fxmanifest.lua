fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'DC Store'   
description 'Standalone Notification system for FiveM'
version '1.0.0'

ui_page 'web/notification.html'

client_scripts {
    'client/main.lua',
    'cfg.lua'
}

files {
    'web/notification.html',
    'web/notification.css',
    'web/notification.js'
}
export 'ShowNotification' -- The Export, for use in other scripts

escrow_ignore {
    'client/main.lua'
}