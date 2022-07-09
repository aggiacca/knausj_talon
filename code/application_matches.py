from talon import Module

mod = Module()


apps = mod.apps

#
# PURPOSE: used only when an app is used in multiple .talon files or doesn't have have .py file
#


# shared
apps.zoom = """
os: mac
and app.bundle: us.zoom.xos
"""

apps.discord = """
os: mac
and app.bundle: com.hnc.Discord
"""

# apple specific apps
apps.loophero = """
os: mac
and app.name: Loop Hero
"""

apps.intothebreach = """
os: mac
and app.name: Into the Breach 
"""

apps.eternalcardgame = """
os: mac
and app.name: Eternal Card Game
"""

apps.guildofengineering = """
os: mac
and app.name: Ultimate Dungeoneering
"""

apps.cookservedelicious = """
os: mac
and app.name: CSD3
"""

apps.magicthegatheringarena = """
os: mac
and app.name: MTGA
"""

apps.datagrip = """
os: mac
and app.name: DataGrip
"""

apps.rstudio = """
os: mac
and app.name: RStudio
"""


apps.iterm2 = """
os: mac
and app.bundle: com.googlecode.iterm2
"""

# linux specific apps
apps.keepass = """
os: linux
and app.name: KeePassX2
os: linux
and app.name: KeePassXC
os: linux
and app.name: KeepassX2
os: linux
and app.name: keepassx2
os: linux
and app.name: keepassxc
os: linux
and app.name: Keepassxc"""

apps.signal = """
os: linux
and app.name: Signal

os: linux
and app.name: signal
"""

apps.termite = """
os: linux
and app.name: /termite/
"""

# windows specific apps
apps.windows_explorer = """
os: windows
and app.name: Windows Explorer
os: windows
and app.exe: explorer.exe
"""

apps.windows_command_processor = """
os: windows
and app.name: Windows Command Processor
os: windows
and app.exe: cmd.exe
"""

apps.windows_terminal = """
os: windows
and app.exe: WindowsTerminal.exe
"""

mod.apps.windows_power_shell = """
os: windows
and app.exe: powershell.exe
"""

apps.vim = """
win.title:/VIM/
"""
