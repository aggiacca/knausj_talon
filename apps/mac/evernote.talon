os: mac
app: Evernote
-
tag(): tabs

# Override
action(app.window_open):
	key(cmd-alt-n)

search (files | notes): key(cmd-j)
search note books: key(alt-cmd-j)

# make this more generic?
go back: key(cmd-[)
go forward: key(cmd-])

new note: key(cmd-n)
new notebook: key(shift-cmd-n)

edit title: key(cmd-l)
move [note] to: key(ctrl-cmd-n)
(delete | trash) note: key(cmd-backspace)

# Found in preferences
(search | find) all: key(ctrl-cmd-e)