os: mac
app: evernote
-
tag(): tabs

settings():
    # Necessary to stop commands like 'slap' getting jumbled
    key_wait = 6.0


search (files | notes): key(cmd-j)
search note books: key(alt-cmd-j)

# make this more generic?
go back: key(cmd-[)
go forward: key(cmd-])

note new: key(cmd-n)
note (delete | trash) : key(cmd-backspace)
notebook new: key(shift-cmd-n)


edit title: key(cmd-l)
move [note] to: key(ctrl-cmd-n)

# Found in preferences
(search | find) all: key(ctrl-cmd-e)
