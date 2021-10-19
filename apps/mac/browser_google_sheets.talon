
os: mac
app: Firefox
app: Google Chrome
title: /Google Sheets/
-

menu search: key(alt-/)

# example. say: go box air twenty three
go box [<user.text>]:
    key(cmd-j)
    insert(user.text or "")

sheet new: key(shift-f11)
sheet list: key(shift-alt-k)
sheet menu: key(alt-shift-s)
sheet top: key(cmd-home)
sheet end: key(cmd-end)
sheet next: key(alt-down)
sheet last: key(alt-up)

# Add or change rows and columns
row insert above:
    key(ctrl-alt-i)
    key(r)
row insert [below]:
    key(ctrl-alt-i)
    key(b)
column insert left:
    key(ctrl-alt-i)
    key(c)
column insert [right]:
    key(ctrl-alt-i)
    key(o)

row delete:
    key(ctrl-alt-e)
    key(d)
row select: key(ctrl-space)
column select: key(shift-space)
column delete:
    key(ctrl-alt-e)
    key(e)

insert date: key(cmd-;)
insert link: key(cmd-k)

link open: key(alt-enter)