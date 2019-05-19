let abs (a:float) : float =
  match a >= 0.0 with
  | true -> a
  | false -> a *. (-1.0)

let average (a:float) (b:float) : float =
  let sum = a +. b in
  sum /. 2.0

let calc_rest (n:float) : float =
  n -. float_of_int (truncate n)

let round2 (i:float) : float =
  let n = abs i in
  let r = calc_rest n in
  let result  = match r with
  _ when r >= 0.5 -> ceil n
  | _ -> floor n in
  match n with
    _ when i >= 0.0 -> result
  | _ -> -.result

let round (i:float) : float =
  let n = abs i in
  let r = calc_rest n in
  let result = match r >= 0.5 with
  | true -> ceil n
  | false -> floor n in
  match i >= 0.0 with
  | true -> result
  | false -> -.result

let isEven (n:int) : bool =
  n mod 2 == 0

let isOdd (n:int) : bool =
  n mod 2 != 0
