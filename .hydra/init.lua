autolaunch.set(true)
pathwatcher.new(os.getenv("HOME") .. "/.hydra/", hydra.reload):start()

-- move the window
function movewindow_fullscreen()
  local win = window.focusedwindow()
  local frame = win:screen():frame_without_dock_or_menu()

  win:setframe(frame)
end

-- move the window
function movewindow_z()
  local win = window.focusedwindow()
  local frame = win:screen():frame_without_dock_or_menu()

  local x = frame.x * 0.05
  local y = frame.h * 0.05

  frame.x = frame.x + x
  frame.y = frame.y + (frame.h / 2)
  frame.w = frame.w - (x * 2)
  frame.h = (frame.h / 2) - y

  win:setframe(frame)
end

-- move the window
function movewindow_x()
  local win = window.focusedwindow()
  local frame = win:screen():frame_without_dock_or_menu()

  local x = frame.x * 0.05
  local y = frame.h * 0.05

  frame.x = frame.x + x
  frame.y = frame.y + y
  frame.w = frame.w - (x * 2)
  frame.h = frame.h - (y * 2)

  win:setframe(frame)
end

-- move the window
function movewindow_focus()
  local win = window.focusedwindow()
  local frame = win:screen():frame_without_dock_or_menu()

  local y = frame.h * 0.05

  frame.y = frame.y + y
  frame.h = frame.h - (y * 2)

  win:setframe(frame)
end

hotkey.new({"ctrl", "alt"}, "m", movewindow_fullscreen):enable()
hotkey.new({"ctrl", "alt"}, "z", movewindow_z):enable()
hotkey.new({"ctrl", "alt"}, "x", movewindow_x):enable()
hotkey.new({"ctrl", "alt"}, "f", movewindow_focus):enable()
