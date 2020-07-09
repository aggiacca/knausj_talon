os: mac
# TODO: Make this use tag so its cross platform and more context sensitive
-

toggle (mute | microphone):
	user.toggle_mute()

toggle (video | camera):
	user.toggle_video()

screen share:
	user.toggle_screen_share()
	