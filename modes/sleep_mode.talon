mode: sleep
-
settings():
    #stop continuous scroll/gaze scroll with a pop
    user.mouse_enable_pop_stops_scroll = 0
	#enable pop click with 'control mouse' mode
	user.mouse_enable_pop_click = 0

(talon | talent) should wake: 
    user.show_wake_notification()
    speech.enable()


key(keypad_1): 
    key(space)
    #user.mouse_toggle_control_mouse()
    #user.show_wake_notification()
    #speech.enable()    
    #user.toggle_mute()

key(keypad_2): 
    user.show_sleep_notification()
    speech.disable()
    user.toggle_mute()
    user.mouse_sleep()

key(keypad_0): 
    user.mouse_toggle_control_mouse()
    

key(f20): 
    user.mouse_toggle_control_mouse()

