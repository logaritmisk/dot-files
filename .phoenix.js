var moveToScreen, moveWindow;

api.bind('m', ['ctrl', 'alt'], function() {
  return moveWindow(null);
});

api.bind('z', ['ctrl', 'alt'], function() {
  return moveWindow(function(frame) {
    var x, y;

    x = frame.width * 0.05;
    y = frame.height * 0.05;

    frame.x += x;
    frame.y += frame.height / 2;
    frame.width -= x * 2;
    frame.height /= 2;
    frame.height -= y;
  });
});

api.bind('x', ['ctrl', 'alt'], function() {
  return moveWindow(function(frame) {
    var x, y;

    x = frame.width * 0.05;
    y = frame.height * 0.05;

    frame.x += x;
    frame.y += y;
    frame.width -= x * 2;
    frame.height -= y * 2;
  });
});

moveWindow = function(fn) {
  var frame, win;

  win = Window.focusedWindow();
  frame = win.screen().frameWithoutDockOrMenu();

  if (fn) {
    fn(frame);
  }

  win.setFrame(frame);

  return true;
};
