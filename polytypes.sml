datatype 'a polyShape = Point of 'a * 'a
| Line of ('a * 'a) * ('a * 'a)
| Triangle of ('a * 'a) * ('a * 'a) * ('a * 'a);

Point((2),(3));
Point((2.5),(3.0));