#' Calculate standard deviation with grouped variables
#'
#' @section Calculation source:
#'
#' This function performs the pooled standard deviation calculations described in
#' [NISTIR 6969](https://nvlpubs.nist.gov/nistpubs/ir/2019/NIST.IR.6969-2019.pdf)
#' Selected Laboratory and Measurement Practices and Procedures to Support
#' Basic Mass Calibrations
#' (page 211, section 8.4).
#'
#' @param df A dataframe containing repeat measurement data
#' @param measurement_variable The variable to calculate the standard deviation for
#' @param ... Variables to group by
#'
#' @importFrom rlang .data
#'
#' @returns A list containing the grouped data frame with standard deviation, and
#' the pooled standard deviation
#' @export
#'
#' @examples
#'
#' test_df <- data.frame(
#' "sample" = rep(x = c(1, 2, 3), each = 3*3),
#' "replicate" = rep(seq(1,6,by = 1), each = 3, times = 3),
#' "gene" = rep(x = c("gene1", "gene2", "gene3"), times = 3*6),
#' "dosage" = runif(n = 54, min = 1.8, max = 2.2))
#'
#' group_sd(df = test_df, measurement_variable = dosage, sample, gene)
#'
group_sd <- function(df, measurement_variable, ... ) {

  if(is.data.frame(df) == FALSE){
    stop("df must be a data frame")
  }

  if(nrow(df) == 0) {
    stop("df must not be empty")
  }

  output_df <- df |>
    dplyr::group_by( ... ) |>
    dplyr::summarise(sd = stats::sd( {{ measurement_variable }} ),
                     n = dplyr::n(),
                     n_minus_1 = n-1,
                     .groups = "drop") |>
    dplyr::mutate(sum_squares = sum_squares(stdev = sd,
                                            degrees_freedom = n_minus_1))

  pooled_sd <- uncertain::pool_sd(sum_squares = sum(output_df$sum_squares),
                       sum_degrees_freedom = sum(output_df$n_minus_1))

  output_list <- list(
    "output_df" = output_df,
    "pooled_sd" = pooled_sd
  )

  return(output_list)

}
