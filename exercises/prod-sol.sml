fun prod_t ([], r) = r
| prod_t ((n::ns), r) = prod_t (ns, n*r);

fun prod l = prod_t(l, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;