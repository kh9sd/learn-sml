datatype shape = Point of real * real
| Line of (real * real) * (real * real)
| Triangle of (real * real) * (real * real) * (real * real)


fun sqr x: real  = x*x;

fun dist ((x1, x2),(y1,y2)) = Math.sqrt(sqr(x1-x2) + sqr(y1-y2));

(* Real.compare = EQUAL*)
fun showTriCood [] = []
| showTriCood(Triangle(a,b,c)::ps) = (a,b,c)::showTriCood(ps)
| showTriCood(p::ps) = showTriCood(ps)

val shapes = [Line((2.2,3.5),(4.1,5.0)), Point(4.5,2.0), Triangle((21.0, 4.5),(15.5, 21.1),(10.5, 10.2))];
showTriCood(shapes);
