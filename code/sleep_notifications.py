from talon import app, Module, Context, actions, ui,imgui, applescript
from talon.voice import Capture
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def show_sleep_notification():
        """Display sleep notification"""
        applescript.run(r'''
    tell application "System Events"
        display notification "talon has stopped"
    end tell
    ''')

    def show_wake_notification():
        """Display wake notification"""
        applescript.run(r'''
    tell application "System Events"
        display notification "talon is running"
    end tell
    ''')