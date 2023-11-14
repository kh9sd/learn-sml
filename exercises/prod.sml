(* Make tail recursive *)
fun prodtr ([], count) = count 
| prodtr ((n::ns), count) = prodtr (ns, (n*count))

fun prod(x) = prodtr(x, 1);
(* fun prod [] = 1
| prod (n::ns) = n * (prod ns); *)

prod([2,3,4,5]) = 120;
prod([]) = 1;
