mode: user.reading
-



stupid talon: "reading mode active"
<phrase>: user.read_next_page()
change direction: user.change_direction()
go right: user.move_cursor("right")
go left: user.move_cursor("left")
go back: user.move_cursor("left")
last page: user.move_cursor("left")

bookmark [it]: user.kindle_bookmark()

# used to look up words
mice: user.mouse_toggle_control_mouse()
(dub click | duke):
	mouse_click()
	mouse_click()
touch:
	mouse_click(0)
cliff:
	mouse_click(0)


# pronouciation issue
mowed command:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.reading")
    mode.enable("command")