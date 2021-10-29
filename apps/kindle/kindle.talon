app: kindle
-
settings():
  # default is right but this is an example
  user.mouse_pop_key = "right"


bookmark [it]: user.kindle_bookmark()
book open: user.kindle_open_book()
book close: user.kindle_close_book()

go library: user.kindle_go_library()
go page: user.kindle_go_page()
go page <user.number>: user.kindle_go_page_num(number)