from talon import Context, actions
ctx = Context()
ctx.matches = r"""
os: mac
app: zoom
"""

@ctx.action_class('user')
class UserActions:
    def toggle_mute():
        actions.key('shift-cmd-a')
    def toggle_video():
        actions.key('shift-cmd-v')
    def toggle_screen_share():
        actions.key('shift-cmd-s')
