mode: all
-
#theres a bug right now where if speech.disable() gets called while it's already disabled, then you cant re-enable it ever. So talon sleep can only be called in dictation mode
#talon sleep: speech.disable()
talon should wake: speech.enable()


#dragon mode: speech.disable()
#talon mode: speech.enable()
