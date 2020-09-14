#defines the various mode commands
mode: all
-
    
talon sleep: 
    user.show_sleep_notification()
    speech.disable()
    
(talon | talent) should wake: 
    user.show_wake_notification()
    speech.enable()

# Purpose: Easy way to use talon during meetings via keyboard or foot pedal
# TODO: combined both keys into one if possible
key(keypad_1): 
    user.show_wake_notification()
    speech.enable()    
    user.toggle_mute()

key(keypad_2): 
    user.show_sleep_notification()
    speech.disable()
    user.toggle_mute()
    


#welcome back:
#    user.mouse_wake()
#    user.history_enable()
#    speech.enable()
#sleep all:
#    user.switcher_hide_running()
#    user.history_disable()
 #   user.homophones_hide()
  #  user.help_hide()
   # user.mouse_sleep()
    #speech.disable()
    #user.engine_sleep()
#talon sleep: speech.disable()
#talon wake: speech.enable()
#dragon mode: speech.disable()
#talon mode: speech.enable()

^mode dictation$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
^mode command$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
[enable] debug mode:
    mode.enable("user.gdb")
disable debug mode:
    mode.disable("user.gdb")
^force see sharp$: user.code_set_language_mode("csharp")
^force see plus plus$: user.code_set_language_mode("cplusplus")
^force go (lang|language)$: user.code_set_language_mode("go")
^force java script$: user.code_set_language_mode("javascript")
^force type script$: user.code_set_language_mode("typescript")
^force markdown$: user.code_set_language_mode("markdown")
^force python$: user.code_set_language_mode("python")
^force are$: user.code_set_language_mode("r")
^force talon [language]$: user.code_set_language_mode("talon")
^clear language modes$: user.code_clear_language_mode()
