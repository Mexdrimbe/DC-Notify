Config = Config or {}

Config.Settings = {
    sounds = { name = "Click", ref = "DLC_HEIST_HACKING_SNAKE_SOUNDS" },
    position = "center-bottom", -- Options: top-right, top-left, bottom-right, bottom-left, center-bottom, center-top, center-left, center-right
    lang = {
        LANGUAGE = "eng", -- eng/swe/spanish/russian 
        description = { 
            descriptionInfo = "Detta är ett informationsmeddelande.", 
            descriptionSuccess = "Detta är ett succémeddelande.", 
            descriptionError = "Detta är ett felmeddelande.", 
            descriptionWarning = "Detta är ett varningsmeddelande." 
        },

        descriptioneng = { 
            descriptionInfo = "This is an information message.", 
            descriptionSuccess = "This is a success message.", 
            descriptionError = "This is an error message.", 
            descriptionWarning = "This is a warning message." 
        },

        descriptionother = { 
            descriptionInfo = "Este es un mensaje informativo.", 
            descriptionSuccess = "Este es un mensaje de éxito.", 
            descriptionError = "Este es un mensaje de error.", 
            descriptionWarning = "Este es un mensaje de advertencia." 
        },

        other = { -- Spanish
            info = "Información", 
            success = "Éxito", 
            error = "Error", 
            warning = "Advertencia" 
        },       
            
        eng = {  -- English
            info = "Info", 
            success = "Success", 
            error = "Error", 
            warning = "Warning" 
        },            

        swe = {  -- Swedish
            info = "Information", 
            success = "Succé", 
            error = "Fel", 
            warning = "Varning" 
        }
    },
}