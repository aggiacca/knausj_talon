from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod= Module()

@mod.action_class
class google_drive_actions:
    def google_drive_move_down_without_changing_selection():
        """Move down without changing selection"""
    def google_drive_move_up_without_changing_selection():
        """Move up without changing selection"""
    def google_drive_move_right_without_changing_selection():
        """Move right without changing selection"""
    def google_drive_move_left_without_changing_selection():
        """Move left without changing selection"""