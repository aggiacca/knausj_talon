os: mac
app: com.apple.finder
-
tag(): file_manager

action(user.file_manager_open_parent):
    key(cmd-up)
        
action(user.file_manager_go_forward):
    key("cmd-]")

action(user.file_manager_go_back):
    key("cmd-[")

# Command–Down Arrow: Open the selected item.
open item: key(cmd-down)

#Command-Delete: Move the selected item to the Trash.
trash item: key(cmd-backspace)