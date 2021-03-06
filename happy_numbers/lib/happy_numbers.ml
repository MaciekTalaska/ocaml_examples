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

let rec isHappyInternal (n: int) (all_numbers: 'int list) (p: bool) : bool =
  if p then
    ignore (Printf.printf "%d -> " n);
  let newn = intsquare_of_string (string_of_int n) in
  if newn == 1 then
    begin
      if p  then
        Printf.printf "%d |" newn;
    true
    end
  else if List.mem newn all_numbers then
    begin
      if p then
        Printf.printf "%d |" newn;
    false
    end
  else
    isHappyInternal newn (newn :: all_numbers) p

let isHappy (n: int) (p: bool) : bool =
  isHappyInternal n [] p


