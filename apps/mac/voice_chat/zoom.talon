os: mac
app: Zoom
app: zoom
app: zoom.us
-
tag(): voice_chat

action(user.toggle_mute):
	key(shift-cmd-a)

action(user.toggle_video):
	key(shift-cmd-v)

action(user.toggle_screen_share):
	key(shift-cmd-s)

(new | start meeting): key(ctrl-cmd-v)
show chat: key(shift-cmd-h)
show participants: key(cmd-u)