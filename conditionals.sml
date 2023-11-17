fun toUpper(c) =
    if #"a" <= c andalso c <= #"z"
    then chr(ord(c) - 32)
    else c
