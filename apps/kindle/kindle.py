from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod = Module()

mod.apps.kindle = "app.name: Kindle"
mod.apps.kindle = "app.name: Kindle.exe"
mod.apps.kindle = "app.bundle: com.amazon.Kindle"


@mod.action_class
class kindle_actions:
    def kindle_bookmark():
        """Bookmark page"""

    def kindle_open_book():
        """Open book"""

    def kindle_close_book():
        """Close book"""

    def kindle_go_library():
        """Go to library"""

    def kindle_go_page():
        """Go to page"""

    def kindle_go_page_num(number: int):
        """Go to page numbered"""
from talon import Module

# --- App definition ---
mod = Module()
mod.apps.kindle = """
os: windows
and app.name: Kindle
os: windows
and app.exe: Kindle.exe
"""
# TODO: mac context and implementation
