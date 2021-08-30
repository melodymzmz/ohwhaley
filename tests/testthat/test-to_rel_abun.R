test_that("to_rel_abun works", {
  # write a test to make sure to_rel_abun() throws an error for negative abundance values
  expect_error(to_rel_abun(data.frame(otuA = -3:-1, otuB = -2:0)),
               "Dataset contains abundance less than zero")
})
