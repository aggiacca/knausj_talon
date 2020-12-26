#defines the various mode commands
mode: all
-
    
(talon | talent) sleep: 
    user.show_sleep_notification()
    speech.disable()
    
(talon | talent) should wake: 
    user.show_wake_notification()
    speech.enable()

# Purpose: Easy way to use talon during meetings via keyboard or foot pedal
# TODO: combined both keys into one if possible
key(keypad_1): 
    #user.mouse_toggle_control_mouse()
    user.show_wake_notification()
    speech.enable()    
    user.toggle_mute()

key(keypad_2): 
    user.show_sleep_notification()
    speech.disable()
    user.toggle_mute()
    user.mouse_sleep()

key(keypad_0): 
    user.mouse_toggle_control_mouse()

#welcome back:
#    user.mouse_wake()
#    user.history_enable()
#    user.talon_mode()
#sleep all:
#    user.switcher_hide_running()
#    user.history_disable()
#    user.homophones_hide()
#    user.help_hide()
#    user.mouse_sleep()
#    speech.disable()
#    user.engine_sleep()
#talon sleep: speech.disable()
#talon wake: speech.enable()
# begin: these commands are really for windows & mac with Dragon.
#dragon mode: user.dragon_mode()
#talon mode: user.talon_mode()
# end: these commands are really for windows & mac on Dragon.
^mode dictation$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^mode command$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
