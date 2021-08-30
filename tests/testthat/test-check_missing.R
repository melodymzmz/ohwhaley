test_that("check_missing works", {
  # write tests for when you expect check_missing() to do nothing
  expect_silent(check_missing(1))
  expect_silent(check_missing('abc'))

  # write a test for when you expect check_missing() to throw an error
  error_msg <- '`x` cannot contain `NA`'
  expect_error(check_missing(NA), error_msg)
  # write a test for a vector with no `NA`s
  expect_silent(check_missing(c(1, 2)))
  # write a test for a vector containing an `NA`
  expect_error(check_missing(c(1, NA)))
})


