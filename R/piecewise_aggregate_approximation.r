#' @title Piecewise Aggregate Approximation
#' @name piecewise_aggregate_approximation
#'
#' @description An algorithm for dimensionality reduction,
#' which the time series is divided into n equal parts and of these parts is taken on average
#'
#' @param time_series Time series
#' @param n_segments number of segments
#' @param na.rm a logical indicating whether missing values should be removed.
#'
#' @return The reduced serie
#'
#' @author Bruno Duru
#'
#' @examples
#'  x <- seq(0, pi*2, pi/6)
#'  ts <- sin(x)*4 + rnorm(length(x))
#'  ts_norm <- z_normalization(ts)
#'  plot(x, ts, type="l", col="blue")
#'  lines(x, ts_norm, type="l", col="red")
#'
#'  print(paste("Mean is :",mean(ts_norm)))
#'
#'  print(paste("Sd is:",sd(ts_norm)))
#' @references
#'  E. Keogh & M. Pazzani. Scaling up dynamic time warping for datamining applications. SIGKDD 2000, pp. 285-289.
#' @export
piecewise_aggregate_approximation <- function(time_series,n_segments = 3,na.rm = TRUE){

}
