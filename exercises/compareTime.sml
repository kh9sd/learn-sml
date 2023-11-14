fun timeBefore((h1, m1, "AM"), (h2, m2, "AM")) =
    (h1 < h2) orelse (m1 < m2)

    | timeBefore((h1, m1, "PM"), (h2, m2, "PM")) =
    timeBefore((h1, m1, "AM"), (h2, m2, "AM"))

    | timeBefore((_, _, "AM"), (_, _, "PM")) =
    true

    | timeBefore((_, _, "PM"), (_, _, "AM")) =
    false

    | timeBefore _ = false;

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;
