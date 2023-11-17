use "treetype.sml";

fun preorder Lf = []
| preorder (Br(v, t1, t2)) = [v] @ preorder t1 @ preorder t2;

fun inorder Lf = []
| inorder (Br(v, t1, t2)) = inorder t1 @ [v] @ inorder t2;

fun postorder Lf = []
| postorder (Br(v, t1, t2)) = postorder t1 @ postorder t2 @ [v];datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree;




fun preorder_better(Lf, acc) = acc
| preorder_better (Br(v, t1, t2), acc) = v :: (preorder_better (t1, preorder_better(t2, acc)));


