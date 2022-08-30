mode: user.talon
mode: command
and code.language: talon
-
tag(): user.code_operators
tag(): user.code_comment

dot talon: insert(".talon")
insert:
    insert("insert('')")
    edit.left()
    edit.left()
key:
    insert('key()')
    edit.left()
<user.modifiers> key: "{modifiers}"

action:
    insert("action():")
    edit.left()
    edit.left()
os win:
    insert("os: windows")
os mac:
    insert("os: mac")
os lunix:
    insert("os: linux")
app:
    insert("app: ")
settings:
    insert("settings():\n")
tag set:
    insert("tag(): ")
tag require:
    insert("tag: ")
user:
    insert("user.")
repeat:
    insert("repeat()")
    edit.left()
