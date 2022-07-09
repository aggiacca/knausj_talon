app: kindle
-
# Set tags
tag(): user.pages

settings():
  # default is right but this is an example
  user.mouse_pop_key = "right"
  user.hiss_toggle = 1
  user.hiss_threshold = 600


bookmark [it]: user.kindle_bookmark()
book open: user.kindle_open_book()
book close: user.kindle_close_book()

go library: user.kindle_go_library()
go page: user.kindle_go_page()
go page <user.number>: user.kindle_go_page_num(number)
