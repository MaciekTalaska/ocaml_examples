open OUnit
open Lib

let test_fixture = "NumbersTest" >:::
[
  "testing average" >:: (fun () ->
    assert_equal 4.0 (Numbers.average 3.0 5.0);
    assert_equal 1.0 (Numbers.average 1.0 1.0);
    assert_equal 0.0 (Numbers.average (-1.0) 1.0);
    assert_equal (-4.0) (Numbers.average (-3.0) (-5.0));
    );

  "round" >:: (fun () ->
    assert_equal 3.0 (Numbers.round 3.4);
    assert_equal 4.0 (Numbers.round 3.5);
    assert_equal 4.0 (Numbers.round 3.6);
  );
]

let _ = run_test_tt test_fixture
