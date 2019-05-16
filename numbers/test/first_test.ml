open OUnit2
open First

let tests = "test suite for First" >:: [
    "average of 3.0 and 5.0 is 4.0" >:: (fun _ -> assert_equal 4.0 (average 3.0 5.0));
  ]

let _ = run_test
