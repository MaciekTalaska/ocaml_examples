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

Printf.printf "Hello world from OCaml!\n";;

let value = calc_rest 3.2;;
Printf.printf "result is: %8f\n" value

let rounded = round 3.3;;
Printf.printf "3.3 rounded is: %8f\n" rounded;;

let rounded2 = round 3.5;;
Printf.printf "3.5 rounded is: %8f\n" rounded2;;

let rounded3 = round 3.6;;
Printf.printf "3.6 rounded is: %8f\n" rounded3;;

let rounded21 = round2 3.3;;
Printf.printf "3.3 rounded2 is: %8f\n" rounded21;;

let rounded22 = round2 3.5;;
Printf.printf "3.5 rounded2 is: %8f\n" rounded22;;

let rounded23 = round2 3.6;;
Printf.printf "3.6 rounded2 is: %8f\n" rounded23;;


(*
let avg = average 3.0 7.0;;

Printf.printf "Average of %8d and %8d is: %8d\n" 3 7 (average 3.0 7.0);;

let r = round avg;;

Printf.printf "Rounded: %8d\n" r;;
Printf.printf "ala ma kota\n";;
*)
