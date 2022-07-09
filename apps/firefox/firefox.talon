app: firefox
-
tag(): browser
tag(): user.tabs
tab search:
    browser.focus_address()
    insert("% ")
tab search <user.text>$:
    browser.focus_address()
    insert("% {text}")
    key(down)
<<<<<<< HEAD
    
# requires settings in firefox 
action(app.tab_previous):
  key(ctrl-pageup)
action(app.tab_next):
  key(ctrl-pagedown)

# using this instead of vimium for two reasons. 
# 1. this will work in tabs that vimium is disabled (like gmail)
# 2. this will work even when the cursor is selected in a text input (like evernote)
tab recent: key(ctrl-tab)
=======
>>>>>>> remotes/knausj/main
