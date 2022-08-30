from talon import app, canvas, ctrl, Module, Context, actions, ui,imgui
import re
import time
import os
import platform

mod = Module()

mod.apps.anki = """
os: mac
and app.name: Anki
"""


@mod.action_class
class Actions:
    def test_position():
        """displays current mouse coordinates"""
        x, y = ctrl.mouse_pos()
        print("CURRENT POSITION ----> x: {0}, y: {1}".format(x, y))

    def move_position(x: int, y: int):
        """move the mouse to the character position"""
        ctrl.mouse_move(x, y)
        ctrl.mouse_click(button=0)