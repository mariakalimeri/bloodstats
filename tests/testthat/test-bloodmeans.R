context("bloodmeans")

library(magrittr)

res <-
  data.frame(var1 = c(1, 2, 3), var2 = c(4, 5, 6)) %>%
  bloodstats::bloodmeans()

test_that("bloodmeans returns output of expected class", {

  expect_true(
    class(res) == "data.frame"
  )
})

test_that("bloodmeans returns expected result given input", {

  expect_true(
    all(res == data.frame(var1 = 2, var2 = 5))
  )
})
