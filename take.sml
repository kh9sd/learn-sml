fun take ([], i) = []
| take (x::xs, i) = if i > 0 then x::take(xs, i-1) else [];

(* not tail recursive, but output is O(n) space since it returns a list, so doesn't really matter *)
