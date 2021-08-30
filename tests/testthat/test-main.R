test_that("main works", {
  # write a test for when `do_calc = FALSE`
  expect_identical(main(FALSE), list(calc = "skipped `calc_something()`"))
  # write a test for when `do_calc = TRUE`
  expect_identical(main(TRUE), list(calc = data.frame(a = 1:3, b = 4:6)))
})
