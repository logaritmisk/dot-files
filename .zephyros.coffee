# Maximize window.
bind "m", ["ctrl", "alt"], -> moveWindow null


# Slice.
bind "z", ["ctrl", "alt"], -> moveWindow (frame) ->
  x = frame.w * 0.05
  y = frame.h * 0.05

  frame.x += x
  frame.y += frame.h / 2

  frame.w -= x * 2
  frame.h /= 2
  frame.h -= y


# 90%.
bind "x", ["ctrl", "alt"], -> moveWindow (frame) ->
  x = frame.w * 0.05
  y = frame.h * 0.05

  frame.x += x
  frame.y += y

  frame.w -= x * 2
  frame.h -= y * 2


# Send Window to Next Display
bind "right", ['ctrl', 'alt'], ->
  win = api.focusedWindow()
  moveToScreen win, win.screen().nextScreen()


# Send Window to Previous Display
bind "left", ['ctrl', 'alt'], ->
  win = api.focusedWindow()
  moveToScreen win, win.screen().previousScreen()


# Move to sceen.
moveToScreen = (win, screen) ->
  return if screen.null?

  frame = win.frame()
  oldScreenRect = win.screen().frameWithoutDockOrMenu()
  newScreenRect = screen.frameWithoutDockOrMenu()

  xRatio = newScreenRect.w  / oldScreenRect.w
  yRatio = newScreenRect.h / oldScreenRect.h

  win.setFrame {
    x: Math.round((frame.x - oldScreenRect.x) * xRatio) + newScreenRect.x
    y: Math.round((frame.y - oldScreenRect.y) * yRatio) + newScreenRect.y
    w: Math.round(frame.w * xRatio)
    h: Math.round(frame.h * yRatio)
  }


# Move window.
moveWindow = (fn) ->
  win = api.focusedWindow()
  frame = win.screen().frameWithoutDockOrMenu()
  fn frame if fn
  win.setFrame frame
