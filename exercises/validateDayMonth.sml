(* Complete the expression *)
fun isValidDate(d, m) =
    case m of
        "January" => (1 <= d andalso d <= 31)
        | "February" => (1 <= d andalso d <= 28)
        | "March" => (1 <= d andalso d <= 31)
        | "April" => (1 <= d andalso d <= 30)
        | "May" => (1 <= d andalso d <= 31)
        | "June" => (1 <= d andalso d <= 30)
        | "July" => (1 <= d andalso d <= 31)
        | "August" => (1 <= d andalso d <= 31)
        | "September" => (1 <= d andalso d <= 30)
        | "October" => (1 <= d andalso d <= 31)
        | "November" => (1 <= d andalso d <= 30)
        | "December" => (1 <= d andalso d <= 31)
        | _ => false
