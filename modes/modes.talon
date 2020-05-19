#defines the various mode commands 
mode: all
-
    
talon sleep: 
    user.show_sleep_notification()
    speech.disable()
    
talon should wake: 
    user.show_wake_notification()
    speech.enable()


#dragon mode: speech.disable()
#talon mode: speech.enable()
