fun change(coinvals, 0) = []
| change(c::coinvals, amount) =
    if amount < c
    then change(coinvals, amount)
    else c::change(c::coinvals, amount-c);

change([25,10,5,1], 43);
change([5,2], 16);