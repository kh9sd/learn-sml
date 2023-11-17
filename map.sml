fun map f [] = []
| map f (x::xs) = (f x)::map f xs;

map size ["Boston", "CS", "CS4400"];