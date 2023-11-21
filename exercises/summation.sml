fun summation f m =
    let fun sum (i,z) : real =
        if i=m then z else sum (i+1, z+(f i))
    in sum (0, 0.0) end;

fun g(i,j) = real ((i - j) * (i - j));
summation (fn i => summation (fn j => g (i, j)) 10) 10;

(* fun summation2 f m n = summation (summation f m) n; *)

(*
f is signature (int * int -> real)
(fn j => f (i, j)) is therefore a signature (int -> real)

summation (fn j => f (i, j)) n is therefore a signature (real)

(fn i => summation (fn j => f (i, j)) n)
*)
fun summation2 f m n = summation (fn i => summation (fn j => f (i, j)) n) m;
