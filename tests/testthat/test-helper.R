context("helper")

test_that("month can be abbreviated correctly", {
  skip_on_cran()
  short.month <- AbbreviateMonth("January_1")
  expect_equal(short.month, "JA")
  expect_is(short.month, "character")
})

test_that("month with quarter can be abbreviated correctly", {
  skip_on_cran()
  short.month <- AbbreviateHeader("December_4")
  expect_equal(short.month, "DE4")
  expect_is(short.month, "character")
})
