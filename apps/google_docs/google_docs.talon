app: Firefox
app: Google Chrome
title: /Google Drive/
-
# Make sure to disable Vimium 


# Navigation and views
go navigation: key(g n)
go items [view]: key(g l)
switch view: key(v)
go details [pane]: key(g d)
toggle details: key(d)
toggle activity: key(i)

# Select items
item select: key(x)
[item] select clear: key(shift-n)

# covered by generic editor
# select down: key(j)
# select up: key(j)
# extends selection down: key(shift-down)

# Moved between items
skip down: user.google_drive_move_down_without_changing_selection()
skip left: user.google_drive_move_up_without_changing_selection()
skip up: user.google_drive_move_right_without_changing_selection()
skip right: user.google_drive_move_down_without_changing_selection()


# Take action on selected items
item open: key(enter)
item rename: key(n)
item [to] folder: key(z)
item star: key(s)
folder move: key(shift-z)
item delete: key(#)

# Create new item
(create|new) document: key(shift-t)
(create|new) (presentation|slide): key(shift-p)
(create|new) spreadsheet: key(shift-s)
(create|new) drawing: key(shift-d)
(create|new) folder: key(shift-f)
(create|new) form: key(shift-o)

# Open menus
menu create: key(c)
menu actions: key(a)
menu folder: key(f)
menu sort: key(r)
menu settings: key(t)


search: key(/)