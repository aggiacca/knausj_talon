os: mac
app: finder
-
tag(): user.file_manager

action(user.file_manager_open_parent):
    key(cmd-up)
        
action(user.file_manager_go_forward):
    key("cmd-]")

action(user.file_manager_go_back):
    key("cmd-[")

action(user.file_manager_open_item):
    key(cmd-down)

action(user.file_manager_trash_item):
    key(cmd-backspace)

action(user.file_manager_open_in_default_editor):
    key(ctrl-shift-cmd-8)