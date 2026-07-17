#' Calculate statistical variation within groups
#'
#' @section Pooled standard deviation:
#'
#' This function includes the pooled standard deviation calculations described in
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
#' head(data_cnv)
#'
#' group_stats(df = data_cnv, measurement_variable = dosage, sample, gene)
#'
group_stats <- function(df, measurement_variable, ... ) {

  if(is.data.frame(df) == FALSE){
    stop("df must be a data frame")
  }

  if(nrow(df) == 0) {
    stop("df must not be empty")
  }

  output_df <- df |>
    dplyr::group_by( ... ) |>
    dplyr::summarise(
      mean = mean( {{ measurement_variable }} ),
      standard_deviation = stats::sd( {{ measurement_variable }} ),
      conf_int_95_min = stats::t.test(x = {{ measurement_variable }}, conf.level = 0.95)$conf.int[1],
      conf_int_95_max = stats::t.test(x = {{ measurement_variable }}, conf.level = 0.95)$conf.int[2],
      replicates = dplyr::n(),
      degrees_freedom = replicates-1,
      .groups = "drop") |>
    dplyr::mutate(sum_squares = sum_squares(standard_deviation = standard_deviation,
                                            degrees_freedom = degrees_freedom),
                  standard_error = standard_deviation /sqrt(replicates))

  pooled_sd <- uncertain::pool_sd(sum_squares = sum(output_df$sum_squares),
                                  sum_degrees_freedom = sum(output_df$degrees_freedom))

  output_list <- list(
    "output_df" = output_df,
    "pooled_sd" = pooled_sd
  )

  return(output_list)

}
