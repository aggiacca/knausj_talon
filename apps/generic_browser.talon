tag: browser
-
address bar | go address | go url: browser.focus_address()
address copy | url copy | copy address | copy url:
    browser.focus_address()
    sleep(50ms)
    edit.copy()
go home: browser.go_home()
[go] forward: browser.go_forward()
go (back | backward): browser.go_back()

# ex: site amazon
go to {user.website}: browser.go(website)
# TODO: doesn't seem to quite work
site {user.website}: browser.go(website)
# Sites - remove
site amazon: browser.go('www.amazon.com')
site read it: browser.go('www.reddit.com')
site twitch: browser.go('www.twitch.tv')
site [google] drive: browser.go('https://drive.google.com/drive/my-drive')
site [google] maps: browser.go('https://www.google.com/maps')
site [google] calendar: browser.go('https://calendar.google.com/calendar/u/0/r')
site [google] (mail|email|gmail): browser.go('https://mail.google.com/mail/u/0/#inbox')
site disney: browser.go('https://www.disneyplus.com/home')
site talon: browser.go('https://search.talonvoice.com/search/')
site Netflix: browser.go('https://www.netflix.com/browse')
site YouTube: browser.go('https://www.youtube.com/')
site Coda: browser.go('https://www.coda.io/')

go private: browser.open_private_window()

bookmark it: browser.bookmark()
bookmark tabs: browser.bookmark_tabs()
(refresh | reload) it: browser.reload()
(refresh | reload) it hard: browser.reload_hard()

bookmark show: browser.bookmarks()
bookmark bar [show]: browser.bookmarks_bar()
downloads show: browser.show_downloads()
extensions show: browser.show_extensions()
history show: browser.show_history()
cache show: browser.show_clear_cache()
dev tools [show]: browser.toggle_dev_tools()

# Legacy [verb noun] commands to be removed at a later time
show downloads: browser.show_downloads()
show extensions: browser.show_extensions()
show history: browser.show_history()
show cache: browser.show_clear_cache()

dev tools: browser.toggle_dev_tools()

#TODO: make these actions
zoom reset: key(cmd-0)

    
# personal vimium
[open] link: key(f)
[open] link new: key(shift-f)
tab move [right]: key(> >)
tab move left: key(< <)

tab (dupe | duplicate): key(y t)
(tabs | tab) search: key(T)
# requires vimium settings change
tab pin: key(ctrl-p)

bookmark open: key(b)
bookmark open new: key(B)
tab to window: key(W)
first input: key(g i)

enable scripts: key(ctrl-shift-alt-1)
# 2shea's vimium
#todo - port to apps
# navigating current page
# help: key(?)
# scroll tiny down: key(j)
# scroll tiny up: key(k)
# scroll left: key(h)
# scroll right: key(l)
# scroll (pop | spring): key(z H)
# scroll push: key(z L)
# scroll top: key(gg)
# scroll (bottom | end): key(G)
# (scroll half down | mini page): key(d)
# scroll half up: key(u)
# [open] link: key(f)
# [open] link new: key(F)
# copy link: key(y f)
# copy (address | url): key(escape y y)
# (refresh | reload): browser.reload()
# view source: key(g s)
# insert mode: key(i)
# next frame: key(g f)
# main frame: key(g F)
# navigating to new pages
# (open | go) (url | history): key(o)
# (open | go) (url | history) new: key(O)
# (open | go) bookmark: key(b)
# (open | go) bookmark new: key(B)
# using find
# find mode: key(/)
# next match: key(n)
# previous match: key(N)
# navigating history
# history back: key(H)
# history forward: key(L)
# manipulating tabs
# last visited: key(^)
# dupe tab: key(y t)
# restore: key(X)
# search tabs: key(T)
# move to window: key(W)
