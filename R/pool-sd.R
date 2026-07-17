#' Calculated pooled standard deviation
#'
#' @param sum_squares Sum of the sum of squares across all groups
#' @param sum_degrees_freedom Sum of the degrees of freedom across all groups
#'
#' @returns The pooled standard deviation
#' @export
#'
pool_sd <- function(sum_squares, sum_degrees_freedom) {

  pooled_sd <- sqrt(sum_squares / sum_degrees_freedom)

  return(pooled_sd)

}
