-- ReloadConfiguration
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- WinWin
hs.loadSpoon("WinWin")
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "q", function()
      spoon.WinWin:moveAndResize("cornerNW")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "w", function()
      spoon.WinWin:moveAndResize("halfup")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "e", function()
      spoon.WinWin:moveAndResize("cornerNE")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "a", function()
      spoon.WinWin:moveAndResize("halfleft")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "s", function()
      spoon.WinWin:moveAndResize("center")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "d", function()
      spoon.WinWin:moveAndResize("halfright")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "z", function()
      spoon.WinWin:moveAndResize("cornerSW")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "x", function()
      spoon.WinWin:moveAndResize("halfdown")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "c", function()
      spoon.WinWin:moveAndResize("cornerSE")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "=", function()
      spoon.WinWin:moveAndResize("fullscreen")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "=", function()
      spoon.WinWin:moveAndResize("expand")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "-", function()
      spoon.WinWin:moveAndResize("shrink")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
      spoon.WinWin:stepMove("left")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
      spoon.WinWin:stepMove("right")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
      spoon.WinWin:stepMove("up")
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
      spoon.WinWin:stepMove("down")
end)

-- KSheet
hs.loadSpoon("KSheet")
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "k", function() -- means "key"
      spoon.KSheet:show()
end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "k", function()
      spoon.KSheet:hide()
end)

-- caffeinate
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "l", function() -- means "lock"
      hs.caffeinate.lockScreen()
end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "l", function()
      hs.caffeinate.systemSleep()
end)

-- AppleScript
---- ShadowSocks
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "f", function() -- means "fanqiang" or "freedom"
      hs.applescript([[
tell application "System Events" to tell process "ShadowsocksX-NG"
    ignoring application responses
        tell menu bar item 1 of menu bar 1
            click
        end tell
    end ignoring
end tell
do shell script "killall System\\ Events"
delay 0.1
tell application "System Events" to tell process "ShadowsocksX-NG"
        tell menu bar item 1 of menu bar 1
                click menu item "Global Mode" of menu 1
        end tell
end tell
]])
end)
hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "f", function() -- means "fanqiang" or "freedom"
      hs.applescript([[
tell application "System Events" to tell process "ShadowsocksX-NG"
    ignoring application responses
        tell menu bar item 1 of menu bar 1
            click
        end tell
    end ignoring
end tell
do shell script "killall System\\ Events"
delay 0.1
tell application "System Events" to tell process "ShadowsocksX-NG"
        tell menu bar item 1 of menu bar 1
                click menu item "Proxy Auto Configure Mode" of menu 1
        end tell
end tell
]])
end)
