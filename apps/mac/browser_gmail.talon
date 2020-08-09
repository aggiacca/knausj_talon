os: mac
app: Firefox
app: Google Chrome
title: /Inbox/
-

# Compose and chat
main window: 
    # workaround - I think vimium messes up the shift+escape keybinding
    # the issue is vimium reenables in the converstation windows
    key(escape)
    key(/)
    key(escape)

chat next: key(ctrl-.)
chat last: key(ctrl-,)

search mail: key(/)

# jumping
#in box: key(g i)
	

# Navigation
#main list: key(u)
section next: key(`)
section last: key(~)

# Hang outs
conversation list: key(h c)

# actions
#expand: key(;)
#collapse: key(:)
trash: key(#)
select it: key(x)
#star mail: key(s)

# threadlist selection
select all: key(* a)
deselect all: key(* n)
select unread: key(* r)