-- Meh+⌘+v ⇨ circumvent paste blocking
hs.hotkey.bind({ "ctrl", "shift", "cmd", "alt" }, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)

-- Meh+7 ⇨ show currently playing Spotify track
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "7", function() hs.spotify.displayCurrentTrack() end)

-- Set alert styling
hs.alert.defaultStyle.fillColor = { white = 0, alpha = 1 }       -- alert background = black
hs.alert.defaultStyle.strokeColor = { white = 1, alpha = 1 }     -- alert outline = amber
hs.alert.defaultStyle.textColor = { hex = "#ffcc2f", alpha = 1 } -- alert text = amber
hs.alert.defaultStyle.textFont = "IBM Plex Sans"
hs.alert.defaultStyle.textSize = 24
hs.alert.defaultStyle.strokeColor = { hex = "#ffcc2f", alpha = 1 } -- alert outline = amber