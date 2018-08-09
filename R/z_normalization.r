#' @title Z-normalization
#' @name z_normalization
#'
#' @description Transform a time series into a time
#' series with an average of approximately 0 and standard deviation 1.
#'
#' The formula for the transformation is:
#' \deqn{x' = (x-\mu)/\sigma}
#'
#' @param timeSeries Time series
#' @param na.rm a logical indicating whether missing values should be removed.
#'
#' @return The time series transformed.
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
#'
#' @export
z_normalization <- function(timeSeries,na.rm = TRUE){
  if(length(timeSeries) == 0) return(NA)
  if(na.rm){
    timeSeries <- timeSeries[!is.na(timeSeries)]
  }
  timeSeries.mean <- mean(timeSeries)
  timeSeries.sd <- sd(timeSeries)
  return((timeSeries - timeSeries.mean)/timeSeries.sd)
}
