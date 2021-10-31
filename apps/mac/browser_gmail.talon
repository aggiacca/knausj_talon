os: mac
app: Firefox
app: Google Chrome
title: /Gmail/
-
# Make sure to disable Vimium 



# Compose and chat
main window: 
    # workaround - I think vimium messes up the shift+escape keybinding
    # the issue is vimium reenables in the converstation windows
    key(escape)
    key(/)
    key(escape)

chat next: key(ctrl-.)
chat last: key(ctrl-,)

search [mail]: key(/)

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

go to inbox:
  key(g)
  key(i)

go to starred:
  key(g)
  key(s)

go to snoozed:
  key(g)
  key(b)

go to sent:
  key(g)
  key(t)

go to drafts:
  key(g)
  key(d)

go to all mail:
  key(g)
  key(a)

go to contacts:
  key(g)
  key(c)

go to label$:
  key(g)
  key(l)

go to label <user.text>:
    key(g)
    key(l)
    sleep(150ms)
    insert("{text}")
    sleep(150ms)
    key(enter)

go to tasks:
  key(g)
  key(k)

go to search filters:
  key(g)
  key(f)

show unread only:
    key(/)
    sleep(150ms)
    key(cmd-right)
    insert(" label:unread")
    key(enter)


select all (conversations | messages):
  key(*)
  key(a)

deselect all (conversations | messages):
  key(*)
  key(n)

select read (conversations | messages):
  key(*)
  key(r)

select unread (conversations | messages):
  key(*)
  key(u)

select starred (conversations | messages):
  key(*)
  key(s)

select unstarred (conversations | messages):
  key(*)
  key(t)


back to messages:
  key(u)


message archive:
  key(e)

message starred:
  key(s)

message reply$:
  key(r)

message reply all:
  key(a)

message forward:
  key(f)

message delete:
  key(#)

[message] mark as read:
  key(I)

[message] mark as unread:
  key(U)

