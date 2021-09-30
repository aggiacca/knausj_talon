from talon import ctrl, ui, Module, Context, actions, clip, app

ctx = Context()
mod = Module()

mod.apps.kindle = "app.name: Kindle"
mod.apps.kindle = """
os: windows
and app.name: Kindle
os: windows
and app.exe: kindle.exe
"""
mod.apps.kindle = """
os: mac
and app.bundle: com.amazon.Kindle
"""
ctx.matches = r"""
app: kindle
"""
