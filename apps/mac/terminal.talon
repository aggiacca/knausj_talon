os: mac
app: Terminal
app: iTerm2
app: com.apple.Terminal
-
tag(): terminal
tag(): file_manager
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
node clean:
  insert("npm run clean")
node link runtime:
  insert("npm link @ruist/cxr")
clean modules:
    insert("rm -rf node_modules")
    key(enter)

dev login:
  insert("aws_creds -u adamg@airkit.com -r dev-fulladmin -f")
  key(enter)

service tool:
  insert("service-tool -v")


project talon:
  insert("cd ~/.talon/user/knausj_talon")
  key(enter)
  
project directory:
  insert("cd ~/Documents/GitRepos")
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

project collections:
  insert("cd ~/Documents/GitRepos/api-collections")
  key(enter)

project integration:
  insert("cd ~/Documents/GitRepos/integration-testing")
  key(enter)

project object service:
  insert("cd ~/Documents/GitRepos/object-service")
  key(enter)

project public:
  insert("cd ~/Documents/GitRepos/publicapi")
  key(enter)

project service tool:
  insert("cd ~/Documents/GitRepos/pypi-service-tool")
  key(enter)

project utilities:
  insert("cd ~/Documents/GitRepos/pypi-utilities")
  key(enter)

project cert processing:
  insert("cd ~/Documents/GitRepos/ru-acme-processing")
  key(enter)

project postprocessing:
  insert("cd ~/Documents/GitRepos/ru-assets-postprocessing")
  key(enter)

project json store:
  insert("cd ~/Documents/GitRepos/ru-json-store")
  key(enter)

project local service:
  insert("cd ~/Documents/GitRepos/ru-local-service")
  key(enter)

project saml:
  insert("cd ~/Documents/GitRepos/ru-saml")
  key(enter)

project service:
  insert("cd ~/Documents/GitRepos/ru-service")
  key(enter)

project session manager:
  insert("cd ~/Documents/GitRepos/ru-session-manager")
  key(enter)

project system:
  insert("cd ~/Documents/GitRepos/ru-system")
  key(enter)

project reporting:
  insert("cd ~/Documents/GitRepos/reporting")
  key(enter)

project sales force:
  insert("cd ~/Documents/GitRepos/salesforce-subscription")
  key(enter)

project infra:
  insert("cd ~/Documents/GitRepos/infra-ingress")
  key(enter)