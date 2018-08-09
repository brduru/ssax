test_that("Z nrom Test", {
  ts=c(0, 2,4, 2, 0)
  ts_norm = round(z_normalization(ts),7)

  ts_norm_resp = c(-0.9561829,0.2390457,1.4342743,0.2390457,-0.9561829)

  expect_that(ts_norm,equals(ts_norm_resp))
})
