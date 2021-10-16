not mode: sleep
-
    
(talon | talent) sleep: 
    user.show_sleep_notification()
    user.mouse_sleep()
    speech.disable()
    
(talon | talent) should wake: 
    user.show_wake_notification()
    speech.enable()



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