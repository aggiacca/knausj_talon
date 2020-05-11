mode: command
mode: dictation
-
#theres a bug right now where if speech.disable() gets called while it's already disabled, then you cant re-enable it ever.
talon sleep: speech.disable()