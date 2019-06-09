let inputs = Lib.Happy_numbers.range 1 30;;

Printf.printf "Value\tisHappy?\n";;
List.iter (fun x -> Printf.printf "%d\t%B\n" x (Lib.Happy_numbers.isHappy x true)) inputs;;
