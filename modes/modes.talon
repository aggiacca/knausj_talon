#defines the various mode commands 
mode: all
-
    
talon sleep: 
    user.show_sleep_notification()
    speech.disable()
    
talon should wake: 
    user.show_wake_notification()
    speech.enable()


^force see sharp$: user.code_set_language_mode("csharp")
^force see plus plus$: user.code_set_language_mode("cplusplus")
^force python$: user.code_set_language_mode("python")
^force go language$: user.code_set_language_mode("go")
^force (talon | talent) language$: user.code_set_language_mode("talon")
^clear language modes$: user.code_clear_language_mode()
