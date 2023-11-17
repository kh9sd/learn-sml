exception change;
fun backChange(coinvals, 0) = []
| backChange([], amount) = raise change
| backChange(c::coinvals, amount) =
    if amount < 0 then raise change
    else c::backChange(c::coinvals, amount-c)
            handle change => backChange(coinvals, amount);

 backChange([5,2], 16);