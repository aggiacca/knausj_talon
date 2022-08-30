from talon import Context, actions
ctx = Context()
ctx.matches = r"""
os: mac
app: discord
"""
ctx.tags = ['user.voice_chat']

@ctx.action_class('user')
class UserActions:
    def toggle_mute():
        actions.key('keypad_3')
