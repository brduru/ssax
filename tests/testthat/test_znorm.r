x <- seq(0, pi*2, pi/6)
context("Test Z-Normalization")
test_that("Mean 0", {
  ts <- sin(x)*4 + rnorm(length(x))
  ts_norm <- z_normalization(ts)
  expect_equal(mean(ts_norm),0,tolerance = 1e-6)
})
test_that("SD 0", {
  ts <- sin(x)*4 + rnorm(length(x))
  ts_norm <- z_normalization(ts)
  expect_equal(sd(ts_norm),1,tolerance = 1e-6)
})
