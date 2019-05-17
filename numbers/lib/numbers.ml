let average (a:float) (b:float) : float =
  let sum = a +. b in
  sum /. 2.0

let calc_rest (n:float) : float =
  n -. float_of_int (truncate n)

let round2 (n:float) : float =
  let r = calc_rest n in
  match r with
    _ when r >= 0.5 -> ceil n
  | _ -> floor n

let round (n:float) : float =
  let r = calc_rest n in
  match r >= 0.5 with
  | true -> ceil n
  | false -> floor n

let isEven (n:int) : bool =
  n mod 2 == 0

let isOdd (n:int) : bool =
  n mod 2 != 0
