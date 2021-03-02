os: mac
app: firefox
-
action(browser.bookmark):
	key(cmd-d)

action(browser.bookmark_tabs):
	key(cmd-shift-d)
	
action(browser.bookmarks):
	key(cmd-alt-b)
  
#action(browser.bookmarks_bar):
#	key(ctrl-shift-b)

action(browser.focus_address): 
	key(cmd-l)
	
#action(browser.focus_page):

action(browser.go_blank):
	key(cmd-n)
	
action(browser.go_back):
	key(cmd-left)

action(browser.go_forward):
	key(cmd-right)
	
action(browser.go_home):
	key(cmd-shift-h)

action(browser.open_private_window):
	key(cmd-shift-p)

action(browser.reload):
	key(cmd-r)

action(browser.reload_hard):
	key(cmd-shift-r)

#action(browser.reload_hardest):
	
action(browser.show_clear_cache):
	key(cmd-shift-delete)
  
action(browser.show_downloads):
	key(cmd-shift-j)

action(browser.show_extensions):
	key(cmd-shift-a)

action(browser.show_history):
	key(cmd-y)
	
action(browser.toggle_dev_tools):
	key(cmd-alt-i)


# requires settings in firefox 
action(app.tab_previous):
  key(ctrl-pageup)
action(app.tab_next):
  key(ctrl-pagedown)

# using this instead of vimium for two reasons. 
# 1. this will work in tabs that vimium is disabled (like gmail)
# 2. this will work even when the cursor is selected in a text input (like evernote)
tab recent: key(ctrl-tab)