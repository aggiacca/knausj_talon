from talon import app, Module, Context, actions, ui, imgui, settings, app, registry, ctrl, actions

mod = Module()

@mod.action_class
class Actions:
    def facial_expression_raise_eyebrows():
        """raise eyebrows action"""
        ctrl.mouse_click(0)

    def facial_expression_smile():
        """smile action"""
        ctrl.mouse_click(1)

    def facial_expression_pucker_lips_outwards():
        """pucker lips outwards action"""
        #ctrl.mouse_click(0)
        #ctrl.mouse_click(0)

    def facial_expression_pucker_lips_left():
        """pucker lips left action"""
        return

    def facial_expression_pucker_lips_right():
        """pucker lips right action"""
        return

    def facial_expression_stick_out_tongue():
        """stick out tongue action"""
        ctrl.mouse_click(0)
        return

    def facial_expression_open_mouth():
        """open mouth action"""
        return    