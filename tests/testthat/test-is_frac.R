test_that("is_frac works", {
  # write tests for when you expect is_frac() to return true
  #  Test both edge cases (the ends of the range of numbers is_frac() should accept)
  #  plus values in the middle of the range.
  expect_true(is_frac(1/2))
  expect_true(is_frac(0.001))
  expect_true(is_frac(0.99999))
  # write tests for when you expect is_frac() to return false
  #  with numbers that are too small and numbers that are too large.
  expect_false(is_frac(100))
  expect_false(is_frac(-0.1))
  # write tests for when you expect is_frac() to throw an error
  error_msg <- "`frac` must be numeric"
  expect_error(is_frac("m"), error_msg)
  expect_error(is_frac(c("mel", 18)), error_msg)
  # write tests using vectors of fractions,
  #  then modify is_frac() until it works.
  #  Don't forget to test both "good" and "bad" vectors.
  expect_true(is_frac(c(0.1, 0.2)))
  expect_false(is_frac(c(10, -9)))
  expect_error(is_frac(c(10, "m")), error_msg)
})
