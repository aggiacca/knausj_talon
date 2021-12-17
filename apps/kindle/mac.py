from talon import Context, actions
ctx = Context()
ctx.matches = r"""
os: mac
app: kindle
"""


@ctx.action_class('user')
class UserActions:
    # Tools
    def kindle_bookmark():  actions.key('cmd-d')

    # File
    def kindle_open_book():  actions.key('cmd-o')
    def kindle_close_book():  actions.key('cmd-w')

    # Go
    def kindle_go_library():  actions.key('cmd-alt-l')
    def kindle_go_page():  actions.key('cmd-g')
    def kindle_go_page_num(number: int):  
        actions.key('cmd-g')
        actions.insert(str(number))
        actions.key('enter')

    # hiss override
    def hiss_activate():  actions.key('right')