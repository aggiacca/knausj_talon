from talon import app, Module, Context, actions, ui,imgui

mod = Module()
mod.tag("voice_chat", desc="Tag for enabling voice chat commands")


@mod.action_class
class Actions:
    def toggle_mute():
        """toggle the microphone"""
    
    def toggle_video():
        """toggle the video/camera"""
    
    def toggle_screen_share():
        """toggle screen share"""
