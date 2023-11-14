(* Make tail recursive *)
fun prod [] = 1
| prod (n::ns) = n * (prod ns);

prod([2,3,4,5]) = 120;
prod([]) = 1;