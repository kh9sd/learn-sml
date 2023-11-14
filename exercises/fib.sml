(* fun fib_t(0, t) = t
| fib_t(1, t) = 1 + t
| fib_t(n, t) = fib_t(n-2, t + fib_t(n-2, 0) + fib_t(n-1, 0)); *)

fun fibtr(a,b,0) = a
| fibtr(a,b,1) = b
| fibtr(a,b,count) = fibtr(b, a+b, count-1)

fun fib(x) = fibtr(0,1,x);
(* fun fib(0) = 0
| fib(1) = 1
| fib(n) = fib(n-2) + fib(n-1); *)

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;
