from talon import Context, actions, ctrl
ctx = Context()
ctx.matches = r"""
os: mac
app: eternalcardgame
"""


@ctx.action_class('user')
class UserActions:
    def facial_expression_pucker_lips_outwards():actions.key('a')
    def hiss_activate(): ctrl.mouse_click(0)