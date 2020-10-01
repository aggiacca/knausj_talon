os: mac
app: discord
-
tag(): user.voice_chat

# Doesn't actually work. Discord doesn't like talon for some reason with keybindings
action(user.toggle_mute):
	key(keypad_3)
