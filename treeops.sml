use "treetype.sml";

fun depth Lf = 0
| depth (Br(v, t1, t2)) = 1 + Int.max(depth t1, depth t2);