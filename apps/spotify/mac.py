from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()

ctx.matches = r"""
app: spotify
"""
ctx.tags = ["user.music_player"]


@ctx.action_class("user")
class user_actions:
    # music_player tag start
    def seek_forward():
        actions.key("shift-cmd-right")

    def seek_backward():
        actions.key("shift-cmd-left")

    def toggle_shuffle():
        actions.key("cmd-s")
        
    def toggle_repeat():
        actions.key("cmd-r")
    # music_player tag end