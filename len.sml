local
    fun addlen(n, []) = n
    | addlen(n, x::l) = addlen (n+1, l)
in
    fun length l = addlen(0,l)
end;

length([2,3,4]) = 3;