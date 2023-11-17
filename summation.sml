fun summation f m =
    let fun sum (i,z) : real =
        if i=m then z else sum (i+1, z+(f i))
    in sum (0, 0.0) end;


summation (fn k => real (k *k )) 10;