from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
ctx.matches = r"""
app: evernote
"""
ctx.tags = ["user.tabs"]


@ctx.action_class("app")
class AppActions:
    def window_open():
        actions.key("cmd-alt-n")