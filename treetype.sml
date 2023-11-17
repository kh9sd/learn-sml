datatype 'a tree = Lf | Br of 'a * 'a tree * 'a tree;

val birnam = Br(1, Br(2, Lf, Br(3,Br(4,Lf,Lf), Lf)), Lf);