from talon import app, ctrl, Module, Context, actions, ui,imgui, applescript
from talon.voice import Capture
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def test_position():
        """displays current mouse coordinates"""
        x, y = ctrl.mouse_pos()
        print("CURRENT POSITION ----> x: {0}, y: {1}".format(x, y))

    def enemy_position_1():
        """mouse the mouse to enemy position 1"""
        ctrl.mouse(1912, 879)
        
    def enemy_position_2():
        """mouse the mouse to enemy position 2"""
        ctrl.mouse(1631, 897)

    def enemy_position_3():
        """mouse the mouse to enemy position 3"""
        ctrl.mouse(100, 200)

    def enemy_position_4():
        """mouse the mouse to enemy position 4"""
        ctrl.mouse(2040, 906)

    def spoils_1():
        """move the mouse to first item of the spoil screen"""
        ctrl.mouse(1261, 569) 
    
    def proceed():
        """move the mouse to the proceed arrow after looting"""
        ctrl.mouse(2223, 1014) 