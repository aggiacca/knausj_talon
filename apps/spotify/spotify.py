from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod = Module()

mod.apps.spotify = "app.name: Spotify"
mod.apps.spotify = """
os: windows
and app.name: Spotify
os: windows
and app.exe: spotify.exe
"""
mod.apps.spotify = """
os: mac
and app.bundle: com.spotify.client
"""
ctx.matches = r"""
app: spotify
"""

ctx.tags = ["user.music_player"]

# cross platform stuff here