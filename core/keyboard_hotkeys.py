from talon import Context, actions, ui, Module, app

mod = Module()

control_toggle = False
shift_toggle = False


# This doesn't work. it only holds the key down while its executing
# need to figure out a way to loop it
# or just make another layer on my keyboard that changes all the click keys to the ctrl click button
# or holding the button would causes repetition like autohot key
@mod.action_class
class keyboard_hotkey_actions:
    def control_toggle():
        """Triggers control toggle for mousing especially poe"""
        global control_toggle
        print('control status')
        print(control_toggle)
        if control_toggle:
            # actions.key("ctrl:up")
            actions.key("a:up")
        else:
            # actions.key("ctrl:down")
            actions.key("a:down")
        control_toggle = not control_toggle

            

    def shift_toggle():
        """Triggers shift toggle for mousing especially poe"""
        global shift_toggle
        if shift_toggle:
            actions.key("shift:up")
        else:
            actions.key("shift:down")
        shift_toggle = not shift_toggle
