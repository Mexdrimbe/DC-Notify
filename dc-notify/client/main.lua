function PlayNotificationSound()
    PlaySoundFrontend(-1, Config.Settings.sounds.name, Config.Settings.sounds.ref, true)
end

function ShowNotification(title, message, notifType, duration)
    PlayNotificationSound()
    SendNUIMessage({
        action  = 'showNotification',
        title   = title,
        message = message,
        type    = notifType or "info",
        duration= duration or 4000,
        position= Config.Settings.position -- Pass the position from Config
    })
end

exports('ShowNotification', ShowNotification)

-- Example Commands for testing only  --[[]]  

RegisterCommand("info", function(source, args, rawCommand)
    local Language = {
        choosen = Config.Settings.lang.LANGUAGE,
        lang = Config.Settings.lang
    }
    if Language.choosen == "swe" then 
        ShowNotification(Language.lang.swe.info, Language.lang.description.descriptionInfo, "info", 5000)
    elseif Language.choosen == "eng" then 
        ShowNotification(Language.lang.eng.info, Language.lang.descriptioneng.descriptionInfo, "info", 5000)
    elseif Language.choosen == "other" then
        ShowNotification(Language.lang.other.info, Language.lang.descriptionother.descriptionInfo, "info", 5000)
    end
end)

RegisterCommand("success", function(source, args, rawCommand)
    local Language = {
        choosen = Config.Settings.lang.LANGUAGE,
        lang = Config.Settings.lang
    }
    if Language.choosen == "swe" then 
        ShowNotification(Language.lang.swe.success, Language.lang.description.descriptionSuccess, "success", 5000)
    elseif Language.choosen == "eng" then 
        ShowNotification(Language.lang.eng.success, Language.lang.descriptioneng.descriptionSuccess, "success", 5000)
    elseif Language.choosen == "other" then
        ShowNotification(Language.lang.other.success, Language.lang.descriptionother.descriptionSuccess, "success", 5000)  
    end
end)

RegisterCommand("error", function(source, args, rawCommand)
    local Language = {
        choosen = Config.Settings.lang.LANGUAGE,
        lang = Config.Settings.lang
    }
    if Language.choosen == "swe" then 
        ShowNotification(Language.lang.swe.error, Language.lang.description.descriptionError, "error", 5000)
    elseif Language.choosen == "eng" then 
        ShowNotification(Language.lang.eng.error, Language.lang.descriptioneng.descriptionError, "error", 5000)
    elseif Language.choosen == "other" then
        ShowNotification(Language.lang.other.error, Language.lang.descriptionother.descriptionError, "error", 5000)  
    end
end)

RegisterCommand("warning", function(source, args, rawCommand)
    local Language = {
        choosen = Config.Settings.lang.LANGUAGE,
        lang = Config.Settings.lang
    }
    if Language.choosen == "swe" then 
        ShowNotification(Language.lang.swe.warning, Language.lang.description.descriptionWarning, "warning", 5000)
    elseif Language.choosen == "eng" then 
        ShowNotification(Language.lang.eng.warning, Language.lang.descriptioneng.descriptionWarning, "warning", 5000)
    elseif Language.choosen == "other" then
        ShowNotification(Language.lang.other.warning, Language.lang.descriptionother.descriptionWarning, "warning", 5000)  
    end
end)

