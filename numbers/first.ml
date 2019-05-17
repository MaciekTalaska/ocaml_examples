(*open Lib*)

Printf.printf "check rounding floats...\n";;
Printf.printf "Value \t round \t round2\n";;
let inputs = [3.4; 3.5; 3.6];;
List.iter (fun x -> Printf.printf "%2.2f \t %2.2f \t\t %2.2f\n" x (Lib.Numbers.round x) (Lib.Numbers.round2 x)) inputs;;

let inputs = [1; 2; 3; 4; 5; 6];;
Printf.printf "\n\nCheck if number is odd/even\n";;
Printf.printf "Value \t odd \t even\n";;
List.iter (fun x -> Printf.printf "%2d \t %B \t %B\n" x (Lib.Numbers.isEven x) (Lib.Numbers.isOdd x)) inputs;;

