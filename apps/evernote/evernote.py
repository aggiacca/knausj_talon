from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod = Module()

mod.apps.evernote = "app.name: Evernote"
mod.apps.evernote = """
os: windows
and app.name: Evernote
os: windows
and app.exe: evernote.exe
"""
mod.apps.evernote = """
os: mac
and app.bundle: com.evernote.client
"""
ctx.matches = r"""
app: evernote
"""

ctx.tags = ["user.tabs"]