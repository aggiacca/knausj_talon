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
        app.notify('talon has stopped')

    def show_wake_notification():
        """Display wake notification"""
        app.notify('talon is running')