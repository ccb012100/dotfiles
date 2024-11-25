-- Meh+⌘+v ⇨ circumvent paste blocking
hs.hotkey.bind({ "ctrl", "shift", "cmd", "alt" }, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)

-- Meh+' ⇨ show currently playing Spotify track
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "'", function() hs.spotify.displayCurrentTrack() end)

-- Set alert styling
hs.alert.defaultStyle.fillColor = { white = 0, alpha = 1 }       -- alert background = black
hs.alert.defaultStyle.strokeColor = { white = 1, alpha = 1 }     -- alert outline = amber
hs.alert.defaultStyle.textColor = { hex = "#ffcc2f", alpha = 1 } -- alert text = amber
hs.alert.defaultStyle.textFont = "IBM Plex Sans"
hs.alert.defaultStyle.textSize = 24
hs.alert.defaultStyle.strokeColor = { hex = "#ffcc2f", alpha = 1 } -- alert outline = amber

-- bind Cmd+Opt+<mouse wheel scroll up/down> to Volume up/down
local eventtap = require("hs.eventtap")
local watcher = eventtap.new({ eventtap.event.types.scrollWheel }, function(event)
    local mods = hs.eventtap.checkKeyboardModifiers()

    -- only if mods = Cmd+Opt
    if not mods.cmd or not mods.alt or mods.ctrl or mods.fn or mods.shift then
        return false -- false = propogate event
    end

    local direction = event:getProperty(hs.eventtap.event.properties.scrollWheelEventFixedPtDeltaAxis1)

    if direction > 0 then
        hs.eventtap.event.newSystemKeyEvent("SOUND_UP", true):post()
        hs.eventtap.event.newSystemKeyEvent("SOUND_UP", false):post()
    elseif direction < 0 then
        hs.eventtap.event.newSystemKeyEvent("SOUND_DOWN", true):post()
        hs.eventtap.event.newSystemKeyEvent("SOUND_DOWN", false):post()
    end

    return true -- true = delete event
end):start()
