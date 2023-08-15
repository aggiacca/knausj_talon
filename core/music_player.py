from talon import app, Module, Context, actions

mod = Module()
mod.tag("music_player", desc="Tag for enabling generic music player commands")

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

