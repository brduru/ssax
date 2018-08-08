#' @title Z-normalization
#' @name znorm
#'
#' @description Transform a time series into a time
#' series with an average of approximately 0 and standard deviation 1.
#'
#' The formula for the transformation is:
#' \deqn{x' = (x-\mu)/\sigma}
#'
#' @param timeSeries Time series
#'
#' @return The time series transformed.
#'
#' @author Bruno Duru
#'
#' @examples
#' ts=c(2.0, 2.5, 3.0, 1.0, 3.0, 7.5)
#'
#' znorm(ts)
#'
#' # -0.51830527 -0.29617444 -0.07404361 -0.96256693 -0.07404361  1.92513385
#' @export
znorm <- function(timeSeries){
  timeSeries.mean <- mean(timeSeries)
  timeSeries.sd <- sd(timeSeries)
  (timeSeries - timeSeries.mean)/timeSeries.sd
}
