tag: file_manager
-
settings():
    # enable if you'd like the picker gui to automatically appear when explorer has focus
    user.file_manager_auto_show_pickers = 0

#
# Shared
#
new folder: user.file_manager_new_folder()
daddy: user.file_manager_open_parent()

go pictures: user.file_manager_open_user_directory("Pictures")
go downloads: user.file_manager_open_user_directory("Downloads")
go profile: user.file_manager_open_user_directory("")
go (documents | docks): user.file_manager_open_user_directory("Documents")
go computer: user.file_manager_open_directory("/Volumes")

#
# File Manager Only
#

# General
open item: user.file_manager_open_item()
open in editor: user.file_manager_open_in_default_editor()
trash item: user.file_manager_trash_item()
go back: user.file_manager_go_back()
go forward: user.file_manager_go_forward()
show properties: user.file_manager_show_properties()

# Require selection on a folder
terminal [tab] here: user.file_manager_terminal_tab_here()
terminal window here: user.file_manager_terminal_window_here()  

# GUI Helper
show options: user.file_manager_show_pickers()
hide options: user.file_manager_hide_pickers()
^follow <number>$: user.file_manager_open_directory(number - 1)
^open <number>$: user.file_manager_open_file(number - 1)
^(cell | sell | select) folder <number>$: user.file_manager_select_directory(number - 1)
^(cell | sell | select) file <number>$: user.file_manager_select_file(number - 1)

# Paging for GUI
next folders: user.file_manager_next_folder_page()
(previous | last) folders: user.file_manager_previous_folder_page()

next files: user.file_manager_next_file_page()
(previous | last) files: user.file_manager_previous_file_page()


# misc windows stuff
force title: user.file_manager_refresh_title()