not mode: sleep
-
^mode dictation$:
    mode.disable("sleep")
    mode.disable("user.reading")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
    
^mode command$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.reading")
    mode.enable("command")

^mode reading$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("command")
    mode.enable("user.reading")
