from talon import Context, actions
ctx = Context()
ctx.matches = r"""
app: firefox
"""

@ctx.action_class('app')
class AppActions:
    # requires settings in firefox
    def tab_previous():
        actions.key('ctrl-pageup')
    def tab_next():
        actions.key('ctrl-pagedown')
        # using this instead of vimium for two reasons.
        # 1. this will work in tabs that vimium is disabled (like gmail)
        # 2. this will work even when the cursor is selected in a text input (like evernote)
