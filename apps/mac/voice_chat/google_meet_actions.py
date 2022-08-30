from talon import Context, actions
ctx = Context()
ctx.matches = r"""
os: mac
app: Google Chrome
title: /Meet -/
"""
ctx.tags = ['user.voice_chat']

@ctx.action_class('user')
class UserActions:
    def toggle_mute():
        actions.key('cmd-d')
    def toggle_video():
        actions.key('cmd-e')
        # No short cut I believe
        #action(user.toggle_screen_share):
        #	key(shift-cmd-s)
