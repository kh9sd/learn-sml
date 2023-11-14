fun take ([], i) = []
| take (x::xs, i) = x::take(xs, i-1);