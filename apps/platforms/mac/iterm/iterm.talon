os: mac
app: iterm2
-
tag(): terminal
# todo: filemanager support
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs

# my code

node start:  insert("npm run start")
node install:
  insert("rm -rf node_modules && npm install")
  key(enter)
node build: insert("npm run build")
node link: insert("npm link")
node clean: insert("npm run clean")
node storybook: insert("npm run storybook")
node link runtime: insert("npm link @ruist/cxr")
node code (gen | generation): insert('npm run code-gen')
clean modules:
    insert("rm -rf node_modules")
    key(enter)

dev login:
  insert("aws_creds -u adamg@airkit.com -r dev-fulladmin -f")
  key(enter)

service tool:
  insert("service-tool -v")


# TODO: Do the below for all of them
#project builder: insert("web-builder")
#go project builder:
#  insert("cd ~/Documents/GitRepos/repo/airkit/web-builder")
#  key(enter)

project talon:
  insert("cd ~/.talon/user/knausj_talon")
  key(enter)
  
project directory:
  insert("cd ~/Documents/GitRepos/repo/airkit")
  key(enter)

project builder: insert("web-builder")
go project builder:
  insert("cd ~/Documents/GitRepos/repo/airkit/node/web-builder")
  key(enter)
  
project runtime: insert('node-cxr')
go project runtime:
  insert("cd ~/Documents/GitRepos/repo/airkit/node/cxr")
  key(enter)

project gateway: insert('node-session-gateway')
go project gateway:
  insert("cd ~/Documents/GitRepos/repo/airkit/node/session-gateway")
  key(enter)

project collections: insert('api-collections')
go project collections:
  insert("cd ~/Documents/GitRepos/repo/airkit/tools/api-collections")
  key(enter)

project testing: insert('testing')
go project testing:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/testing")
  key(enter)

project object service: insert('object-service')
go project object service:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/object-service")
  key(enter)

project public: insert('publicapi')
go project public:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/publicapi")
  key(enter)

project service tool: insert('pypi-service-tool')
go project service tool:
  insert("cd ~/Documents/GitRepos/repo/airkit/infra/service-tool")
  key(enter)

project utilities: insert('pypi-utilities')
go project utilities:
  insert("cd ~/Documents/GitRepos/repo/airkit/infra/pypi-utilities")
  key(enter)

project cert processing: insert('ru-acme-processing')
go project cert processing:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/acme-processing")
  key(enter)

project postprocessing: insert('ru-assets-postprocessing')
go project postprocessing:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/assets-postprocessing")
  key(enter)

project json store: insert('ru-json-store')
go project json store:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/json-store")
  key(enter)

project local service: insert('ru-local-service')
go project local service:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/local-service")
  key(enter)

project saml: insert('ru-saml')
go project saml:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/saml")
  key(enter)

project service: insert('ru-service')
go project service:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/ru-service")
  key(enter)

project session manager: insert('ru-session-manager')
go project session manager:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/session-manager")
  key(enter)

project system: insert('ru-system')
go project system:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/system")
  key(enter)

project reporting: insert('reporting')
go project reporting:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/reporting")
  key(enter)

project sales force: insert('salesforce-subscription')
go project sales force:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/salesforce-subscription")
  key(enter)

project kit cloud: insert('kit-repository')
go project kit cloud:
  insert("cd ~/Documents/GitRepos/repo/airkit/kotlin/kit-repository")
  key(enter)
