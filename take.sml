fun take ([], i) = []
| take (x::xs, i) = if i > 0 then x::take(xs, i-1) else [];