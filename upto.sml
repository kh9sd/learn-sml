fun upto(m, n) =
    if m > n then []
    else m::upto(m+1, n);

upto(2,10);