let rec range start stop =
  if start > stop then []
  else start :: range (start+1) stop

let intsquare_of_char (c: char) : int =
  let n = int_of_char c - int_of_char '0' in
  n * n;;

let intsquare_of_string (s: string) : int =
  let stop = (String.length s) - 1 in
  let start = 0 in
  let temp = range start stop in
  let squares = List.map (fun x -> intsquare_of_char (String.get s x)) temp in
  List.fold_left (+) 0 squares;;

let rec isHappyInternal (n: int) (all_numbers: 'int list) : bool =
  ignore (Printf.printf "%d -> " n);
  let newn = intsquare_of_string (string_of_int n) in
  if newn == 1 then
    true
  else if List.mem newn all_numbers then
    false
  else
    isHappyInternal newn (newn :: all_numbers)

let isHappy (n: int) : bool =
  isHappyInternal n []

let inputs = range 1 30;;

Printf.printf "Value\tisHappy?\n";;
List.iter (fun x -> Printf.printf "%d\t%B\n" x (isHappy x)) inputs;;
