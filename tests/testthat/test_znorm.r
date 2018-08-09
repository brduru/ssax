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
test_that("Empety Time Series", {
  ts <- c()
  ts_norm <- z_normalization(ts)
  expect_equal(ts_norm,NA)
})
test_that("Normalization Time Series", {
  ts <- c(2,4,5,1,2,3)
  ts_norm <- z_normalization(ts)
  resp <- c(-0.5661385, 0.7925939, 1.4719601, -1.2455047, -0.5661385,  0.1132277)
  expect_equal(ts_norm,resp,tolerance = 1e-6)

})
test_that("Normalization Time Series", {
  ts <- c(2,4,5,1,2,NA,3)
  ts_norm <- z_normalization(ts)
  resp <- c(-0.5661385, 0.7925939, 1.4719601, -1.2455047, -0.5661385,  0.1132277)
  expect_equal(ts_norm,resp,tolerance = 1e-6)

})

