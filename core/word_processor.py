from talon import app, Module, Context, actions, ui,imgui
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def toggle_mute():
        """toggle the microphone"""
    
    def toggle_video():
        """toggle the video/camera"""
    
    def toggle_screen_share():
        """toggle screen share"""
