#!/usr/bin/env osascript

# Toggle WezTerm
#: If WezTerm is the active application, hide it
#: If WezTerm is not the active application, activate it

tell application "System Events"
  set currentApp to name of first process where it is frontmost
end tell

if currentApp is equal to "wezterm-gui"
  tell application "System events"
    try
      set visible of application process "wezterm-gui" to false
    end try
  end tell
else
  tell application "WezTerm"
    activate
  end tell
end