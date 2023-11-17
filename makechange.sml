fun allChange(coins, coinvals, 0) = [coins]
| allChange(coins, [], amount) = []
| allChange(coins, c::coinvals, amount) =
    if amount < 0 then []
    else allChange(c::coins, c::coinvals, amount-c) @
            allChange(coins, coinvals, amount);


fun allChange2(coins, coinvals, 0, result) = coins::result
| allChange2(coins, [], amount, result) = result
| allChange2(coins, c::coinvals, amount, result) =
    if amount < 0 then result
    else allChange2(coins, coinvals, amount, 
		allChange2(c::coins, c::coinvals, amount-c, result));


allChange2([], [5,2], 16, []);
allChange2([], [25,10,2,1], 43, []);

