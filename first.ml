let average a b =
  let sum = a +. b in
  sum /. 2.0;;

let calc_rest n =
  n -. float_of_int (truncate n);;

let round2 n =
  let r = calc_rest n in
  match r with
  _ when r >= 0.5 -> ceil n
  | _ -> floor n
;;

let round n =
  let r = calc_rest n in
  match r >= 0.5 with
  | true -> ceil n
  | false -> floor n;;

let inputs = [ 3.4; 3.5; 3.6];;

Printf.printf "Value \t rounded \t rounded2\n";;

List.iter (fun x -> Printf.printf "%2.2f \t %2.2f \t\t %2.2f\n" x (round x) (round2 x)) inputs;;

(*
let avg = average 3.0 7.0;;

Printf.printf "Average of %8d and %8d is: %8d\n" 3 7 (average 3.0 7.0);;

let r = round avg;;

Printf.printf "Rounded: %8d\n" r;;
Printf.printf "ala ma kota\n";;
*)
