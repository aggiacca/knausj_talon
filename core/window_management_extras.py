from talon import app, Module, Context, actions, ui,imgui
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def window_fullscreen():
        """fullscreens the application putting into a new desktop/window instead of expanding in the current window"""
