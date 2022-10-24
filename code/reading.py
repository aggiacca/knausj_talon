# Descended from https://github.com/dwiel/talon_community/blob/master/misc/dictation.py
import re
from typing import Callable, Optional

from talon import Context, Module, actions, grammar, ui

mod = Module()

direction = True
setting_reading_direction = mod.setting(
    "reading_direction",
    type=int,
    default=1,
    desc="Decides the direction (left 0/right 1) when there is reading input",
)

mod.list("prose_modifiers", desc="Modifiers that can be used within prose")
mod.list("prose_snippets", desc="Snippets that can be used within prose")
ctx = Context()

@mod.action_class
class Actions:
    def read_next_page():
        """Move to the next page"""
        # if setting_reading_direction.get() == 1:
        if direction:
            actions.edit.right()
        else:
            actions.edit.left()

    def change_direction():
            """Change the reading direction"""
            global direction
            direction = not direction 
           
