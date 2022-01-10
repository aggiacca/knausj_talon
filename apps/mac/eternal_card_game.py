from talon import Context, actions, ctrl
ctx = Context()
ctx.matches = r"""
os: mac
app: eternalcardgame
"""


@ctx.action_class('user')
class UserActions:
    def facial_expression_raise_eyebrows():  
        #return
        actions.user.mouse_toggle_control_mouse()
        print('raise eyebrows')

    def facial_expression_pucker_lips_outwards():  
        print('pucker lips outwards')
        return
        #actions.user.mouse_toggle_control_mouse()
    def facial_expression_stick_out_tongue():  ctrl.mouse_click(button=1) 
    def facial_expression_smile():  actions.key('a')
    def hiss_activate():  ctrl.mouse_click(button=0) 
    def hiss_deactivate():  pass