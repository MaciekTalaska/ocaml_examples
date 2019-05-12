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

let inputs = [3.4; 3.5; 3.6];;

Printf.printf "check rounding floats...\n";;
Printf.printf "Value \t round \t round2\n";;
List.iter (fun x -> Printf.printf "%2.2f \t %2.2f \t\t %2.2f\n" x (round x) (round2 x)) inputs;;


let inputs = [1; 2; 3; 4; 5; 6];;
Printf.printf "\n\nCheck if number is odd/even\n";;
Printf.printf "Value \t odd \t even\n";;
List.iter (fun x -> Printf.printf "%2d \t %B \t %B\n" x (isEven x) (isOdd x)) inputs;;
