type king = {
    name: string,
    born: int,
    crowned: int,
    died: int,
    quote: string
};

fun lifetime(k: king) = #died k - #born k;

val henryVI = {
    name = "Henry VI",
    born = 1421,
    crowned = 1422,
    died = 1471,
    quote = "Weep, wretched man, I'll aid thee tear for tear"};

lifetime(henryVI) = 50;
