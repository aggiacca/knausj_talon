new window: app.window_open()
last window: app.window_next()
next window: app.window_previous()
close window: app.window_close()
focus <user.running_applications>: user.switcher_focus(running_applications)
list running: user.switcher_list_running()
hide running: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)


# my additions
fullscreen window: user.window_fullscreen()

# TODO: make all below an action so it works on windows too generically
lock screen: key(cmd-ctrl-q)
force quit: key(cmd-alt-escape)

# system preferences -> keyboard -> short cuts
show desktop: key(f11)
desktop one: key(ctrl-1)
desktop two: key(ctrl-2)
desktop three: key(ctrl-3)

system menu bar: key(ctrl-f2)
system dock: key(ctrl-f3)
