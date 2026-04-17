#!/usr/bin/env osascript

# Toggle Visual Studio Code between active and hidden

tell application "System Events"
  set currentApp to name of first process where it is frontmost
end tell

if currentApp is equal to "Code"
  tell application "System events"
    try
      set visible of application process "Code" to false
    end try
  end tell
else
  tell application "Code"
    activate
  end tell
end