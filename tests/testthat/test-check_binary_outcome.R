test_that("check_binary_outcome works", {
  # write tests for when you expect check_binary_outcome() to throw an error.
  #  be sure to include multiple cases with too few and too many outcomes.
  expect_error(check_binary_outcome(data.frame(dx = c()), 'dx'))
  error_msg <- 'A binary outcome variable is required, but this dataset has'
  expect_error(check_binary_outcome(
    data.frame(dx = c('cancer', 'normal', 'adenoma'),
               a = 1:3,
               b = 4:6), 'dx'),
    paste(error_msg, 3))
  expect_error(check_binary_outcome(
    data.frame(dx = 1:10,
               a = 1:10), 'dx'),
    paste(error_msg, 10))
  expect_error(check_binary_outcome(
    data.frame(dx = c(1),
               a = c('a')), 'dx'),
    paste(error_msg, 1))

  # write tests for when you expect check_binary_outcome() to return nothing
  expect_silent(check_binary_outcome(
    data.frame(dx = c(1, 2)), 'dx'))
  expect_silent(check_binary_outcome(
    tibble::tibble(dx = c(1, 2)), 'dx'))
})
