open OUnit
open Lib

let test_fixture = "NumbersTest" >:::
[
  "abs" >:: (fun () ->
      assert_equal 1.0 (Numbers.abs 1.0);
      assert_equal 1.0 (Numbers.abs (-1.0));
  );

  "average" >:: (fun () ->
    assert_equal 4.0 (Numbers.average 3.0 5.0);
    assert_equal 1.0 (Numbers.average 1.0 1.0);
    assert_equal 0.0 (Numbers.average (-1.0) 1.0);
    assert_equal (-4.0) (Numbers.average (-3.0) (-5.0));
  );

  "round" >:: (fun () ->
    assert_equal 3.0 (Numbers.round 3.4);
    assert_equal 4.0 (Numbers.round 3.5);
    assert_equal 4.0 (Numbers.round 3.6);
    assert_equal (-3.0) (Numbers.round (-3.3));
    assert_equal (-4.0) (Numbers.round (-3.5));
    assert_equal (-4.0) (Numbers.round (-3.6));
    );

  "round 2" >:: (fun () ->
    assert_equal 3.0 (Numbers.round2 3.4);
    assert_equal 4.0 (Numbers.round2 3.5);
    assert_equal 4.0 (Numbers.round2 3.6);
    assert_equal (-3.0) (Numbers.round2 (-3.3));
    assert_equal (-4.0) (Numbers.round2 (-3.5));
    assert_equal (-4.0) (Numbers.round2 (-3.6));
    );

  "isEven" >:: (fun () ->
    assert_equal true (Numbers.isEven 0);
    assert_equal true (Numbers.isEven 2);
    assert_equal true (Numbers.isEven 4);
    assert_equal false (Numbers.isEven 3);
  );

  "isOdd" >:: (fun () ->
    assert_equal false (Numbers.isOdd 0);
    assert_equal true (Numbers.isOdd 1);
    assert_equal true (Numbers.isOdd 3);
    assert_equal false (Numbers.isOdd 4);
  );
]

let _ = run_test_tt test_fixture
