#' Calculate the sum of squares
#'
#' @param degrees_freedom The degrees of freedom within a group
#' @param standard_deviation The standard deviation within a group
#'
#' @returns The squared standard deviation multiplied by degrees of freedom
#' @export
#'
sum_squares <- function(degrees_freedom, standard_deviation) {

  sum_squares <- degrees_freedom*standard_deviation^2

  return(sum_squares)

}
