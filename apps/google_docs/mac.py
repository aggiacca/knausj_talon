from talon import Context, actions
ctx = Context()
# TODO: do we add the app and title here?
ctx.matches = r"""
os: mac
"""


@ctx.action_class('user')
class UserActions:
    # Move between items
    def google_drive_move_down_without_changing_selection():  actions.key('cmd-down')
    def google_drive_move_up_without_changing_selection():  actions.key('cmd-up')
    def google_drive_move_right_without_changing_selection():  actions.key('cmd-right')
    def google_drive_move_left_without_changing_selection():  actions.key('cmd-left')