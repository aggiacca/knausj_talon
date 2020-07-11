from talon import app, Module, Context, actions, ui,imgui, applescript
from talon.voice import Capture
import re
import time
import os
import platform

mod = Module()

@mod.action_class
class Actions:
    def seek_forward():
        """ seek the song forward """
    
    def seek_backward():
        """ seek the song backward """
    
    def toggle_shuffle():
        """ toggle shuffle """
    
    def toggle_repeat():
        """ toggle repeat """

