let rec range start stop =
  if start > stop then []
  else start :: range (start+1) stop

let isHappy (n: int) : bool =
  let all = n in
  false

let isHappyInt (n: int) : bool =
  false

let intsquare_of_char (c: char) : int =
  let n = int_of_char c - int_of_char '0' in
  n * n;;

let intsquare_of_string (s: string) : int =
  let stop = (String.length s) - 1 in
  let start = 0 in
  let temp = range start stop in
  let squares = List.map (fun x -> intsquare_of_char (String.get s x)) temp in
  List.fold_left (+) 0 squares;;

let inputs = range 1 10;;

Printf.printf "Value\tisHappy?\n";;
List.iter (fun x -> Printf.printf "%d\t%B\n" x (isHappy x)) inputs;;

