os: mac
app: Terminal
app: iTerm2
app: com.apple.Terminal
-
action(user.file_manager_open_parent):
    insert("cd ..")
    key(enter)
action(app.tab_open):
  key(cmd-t)
action(app.tab_close):
  key(cmd-w)
action(app.tab_next):
  key(ctrl-tab)
action(app.tab_previous):
  key(ctrl-shift-tab)
action(app.window_open):
  key(cmd-n)

rerun search:
  key(ctrl-r)
run last:
  key(up)
  key(enter)
kill all:
  key(ctrl-c)
action(edit.page_down):
  key(command-pagedown)
action(edit.page_up):
  key(command-pageup)
suspend:
  key(ctrl-z)
resume:
  insert("fg")
  key(enter)

node start:
  insert("npm run start")
node install:
  insert("npm install")
node storybook:
  insert("npm run storybook")
node build:
  insert("npm run build")
node link:
  insert("npm link")
node link runtime:
  insert("npm link @ruist/cxr")
clean modules:
    insert("rm -rf node_modules")
    key(enter)

dev login:
  insert("aws_creds -u adamg@airkit.com -r dev-fulladmin -f")
  key(enter)

project builder:
  insert("cd ~/Documents/GitRepos/web-builder")
  key(enter)
  
project runtime:
  insert("cd ~/Documents/GitRepos/node-cxr")
  key(enter)
  
project gateway:
  insert("cd ~/Documents/GitRepos/node-session-gateway")
  key(enter)
