os: mac
app: Spotify
-
tag(): user.music_player

action(user.seek_forward):
	key(shift-cmd-right)

action(user.seek_backward):
	key(shift-cmd-left)

action(user.toggle_shuffle):
	key(cmd-s)

action(user.toggle_repeat):
	key(cmd-r)
