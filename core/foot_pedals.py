from talon import Context, actions, ui, Module, app

mod = Module()

@mod.action_class
class foot_pedals_actions:
    def left_pedal_elite2():
        """Trigger for pressing the left pedal"""
        #user.mouse_toggle_control_mouse()
        #user.show_wake_notification()
        #speech.enable()    
        #user.toggle_mute()

    def middle_pedal_elite2():
        """Trigger for pressing the middle pedal"""
        actions.user.show_sleep_notification()
        actions.speech.disable()
        actions.user.toggle_mute()
        actions.user.mouse_sleep()

    def right_pedal_elite2():
        """Trigger for pressing the right pedal"""
        actions.user.mouse_toggle_control_mouse()

    def stand_alone_pedal():
        """Trigger for pressing the stand alone pedal"""
        # actions.user.mouse_toggle_control_mouse()
