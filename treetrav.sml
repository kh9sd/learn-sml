use "treetype.sml";

fun preorder Lf = []
| preorder (Br(v, t1, t2)) = [v] @ preorder t1 @ preorder t2;

fun inorder Lf = []
| inorder (Br(v, t1, t2)) = inorder t1 @ [v] @ inorder t2;

fun postorder Lf = []
| postorder (Br(v, t1, t2)) = postorder t1 @ postorder t2 @ [v];