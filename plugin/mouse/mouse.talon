<<<<<<< HEAD:misc/mouse.talon
mouse control: user.mouse_toggle_control_mouse()
mice: user.mouse_toggle_control_mouse()
hiss mouse: user.mouse_toggle_hiss_mouse()
zoom mouse: user.mouse_toggle_zoom_mouse()
camera overlay: user.mouse_toggle_camera_overlay()
run calibration: user.mouse_calibrate()	

# alternate clicking statements for variety and to avoid strain
touch:
	mouse_click(0)
rich:
	mouse_click(0)

cliff: 
	mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    	# End any open drags
	# Touch automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

# righty
rickle: 
	mouse_click(1)
	# close the mouse grid if open
	user.grid_close()

# mid click:
middle: 
	mouse_click(2)
	# close the mouse grid
	user.grid_close()
=======
control mouse: tracking.control_toggle()
control off: user.mouse_sleep()
zoom mouse: tracking.control_zoom_toggle()
camera overlay: tracking.control_debug_toggle()
run calibration: tracking.calibrate()
touch:
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()

righty:
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()

mid click:
    mouse_click(2)
    # close the mouse grid
    user.grid_close()
>>>>>>> master:plugin/mouse/mouse.talon

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<<<<<<< HEAD:misc/mouse.talon
<user.modifiers> cliff: 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()

<user.modifiers> rickle: 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
=======
<user.modifiers> touch:
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
<user.modifiers> righty:
    key("{modifiers}:down")
    mouse_click(1)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
>>>>>>> master:plugin/mouse/mouse.talon
(dub click | duke):
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
(trip click | trip lick):
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
left drag | drag:
    user.mouse_drag(0)
    # close the mouse grid
    user.grid_close()
right drag | righty drag:
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
end drag | drag end: user.mouse_drag_end()
wheel down: user.mouse_scroll_down()
wheel down here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
wheel tiny [down]: user.mouse_scroll_down(0.2)
wheel tiny [down] here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down(0.2)
wheel downer: user.mouse_scroll_down_continuous()
wheel downer here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down_continuous()
wheel up: user.mouse_scroll_up()
wheel up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
wheel tiny up: user.mouse_scroll_up(0.2)
wheel tiny up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up(0.2)
wheel upper: user.mouse_scroll_up_continuous()
wheel upper here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()
wheel gaze: user.mouse_gaze_scroll()
wheel gaze here:
    user.mouse_move_center_active_window()
    user.mouse_gaze_scroll()
wheel stop: user.mouse_scroll_stop()
wheel stop here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()
wheel left: user.mouse_scroll_left()
wheel left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left()
wheel tiny left: user.mouse_scroll_left(0.5)
wheel tiny left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left(0.5)
wheel right: user.mouse_scroll_right()
wheel right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right()
wheel tiny right: user.mouse_scroll_right(0.5)
wheel tiny right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right(0.5)
copy mouse position: user.copy_mouse_position()


warp:
  user.warp_mouse()

glect:
  user.kingfisher_click(2)

glimpse:
  user.kingfisher_click(1)
