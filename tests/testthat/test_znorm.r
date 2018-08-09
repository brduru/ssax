test_that("Z nrom Test", {
  ts=c(0, 2,4, 2, 0)
  ts_norm = z_normalization(ts)

  ts_norm_resp = c(-0.9561829,0.2390457,1.4342743,0.2390457,-0.9561829)

  expect_equal(ts_norm,ts_norm_resp,tolerance = 1e-6)
})
