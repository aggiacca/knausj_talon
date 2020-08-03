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