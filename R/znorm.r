#' @title Faz a Soma de Dois Numeros
#' @name znorm
#'
#' @description Transform a time series into a time 
#' series with an average of approximately 0 and standard deviation 1
#'
#' @param timeSeries Um numero
#' 
#'
#' @details Utilize este campo para escrever detalhes mais tecnicos da
#'     sua funcao (se necessario), ou para detalhar melhor como
#'     utilizar determinados argumentos.
#'
#' @return A soma dos numeros \code{x} e \code{y}.
#'
#' @author Bruno Duru
#'
#' @seealso \code{\link[base]{sum}}, \code{\link[base]{+}}
#'
#' @examples
#' ts=c(2.0, 2.5, 3, 1, 3, 7.5, 4.1, 6.0, 7,2, 3.8, 5.1, 7.3, 0.3, 1,2, 1,7)
#' znorm(ts)
#'
#' @export
znorm <- function(timeSeries){
  timeSeries.mean <- mean(timeSeries)
  timeSeries.sd <- sd(timeSeries)
  (timeSeries - timeSeries.mean)/timeSeries.sd
}