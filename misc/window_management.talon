window (new|open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
focus <user.running_applications>: user.switcher_focus(running_applications)
running list: user.switcher_toggle_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)


# my additions
window fullscreen: user.window_fullscreen()

# TODO: make all below an action so it works on windows too generically
screen lock: key(cmd-ctrl-q)
force quit: key(cmd-alt-escape)

# system preferences -> keyboard -> short cuts
desktop show: key(f11)
desktop one: key(ctrl-1)
desktop two: key(ctrl-2)
desktop three: key(ctrl-3)

system menu bar: key(ctrl-f2)
system dock: key(ctrl-f3)
spotlight: key(cmd-space)