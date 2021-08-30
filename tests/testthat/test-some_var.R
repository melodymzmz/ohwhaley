test_that("test some_var works", {
  # write a test where you give do_something() a character
  expect_identical(do_something('abc'), data.frame(a = c('abc')))
  # write a test where you give do_something() a vector of characters
  expect_identical(do_something(c('d', 'e', 'f')), data.frame(a = c('d', 'e', 'f')))
  # write a test where you give do_something() a numeric
  expect_identical(do_something(2), data.frame(a = 2))
})

