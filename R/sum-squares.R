#' Calculate the sum of squares
#'
#' @param degrees_freedom The degrees of freedom within a group
#' @param stdev The standard deviation within a group
#'
#' @returns The squared standard deviation multiplied by degrees of freedom
#' @export
#'
#' @examples
sum_squares <- function(degrees_freedom, stdev) {

  sum_squares <- degrees_freedom*stdev^2

  return(sum_squares)

}
