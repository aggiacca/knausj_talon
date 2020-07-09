
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"

# unique extras
double dash: "--"
triple quote: "'''"
(dot dot | dotdot): ".."
ellipses: "..."
(comma and | spamma): ", "
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)