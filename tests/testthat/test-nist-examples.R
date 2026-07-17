# NIST Repeatability analysis
# Data from https://www.itl.nist.gov/div898/handbook/mpc/section4/mpc441.htm

test_that("uncertain gives same results as NIST repeatability example 2.4.4.1", {

  df_nist <- readr::read_csv("test_data/nist_wafer_probe_data.csv",
                             show_col_types = FALSE) |>
    janitor::clean_names() |>
    dplyr::rename(degrees_freedom = df,
                  standard_deviation = stddev) |>
    dplyr::mutate(nist_sum_squares = round(nist_sum_squares, 5))

  df_uncertain <- df_nist |>
    dplyr::mutate(sum_squares = round(uncertain::sum_squares(
      degrees_freedom = degrees_freedom,
      standard_deviation = standard_deviation), 5))

  expect_equal(object = df_uncertain$sum_squares,
               expected = df_nist$nist_sum_squares)

  expect_equal(
    object = round(uncertain::pool_sd(sum_squares = sum(df_uncertain$sum_squares),
                                      sum_degrees_freedom = sum(df_uncertain$degrees_freedom)), 5),
    expected = 0.07871)

})

# NIST Reproducibility analysis
# Data from https://www.itl.nist.gov/div898/handbook/mpc/section4/mpc442.htm

test_that("uncertain gives same results as NIST reproducibility example 2.4.4.2", {

  df_nist <- tibble::tribble(
    ~days, ~standard_deviation, ~degrees_freedom, ~nist_sum_squares,
    "run 1", 0.027280, 5, 0.003721,
    "run 2", 0.027560, 5, 0.003798)

  df_uncertain <- df_nist |>
    dplyr::mutate(sum_squares = round(uncertain::sum_squares(
      degrees_freedom = degrees_freedom,
      standard_deviation = standard_deviation), 6))

  expect_equal(object = df_uncertain$sum_squares,
               expected = df_nist$nist_sum_squares)

  expect_equal(
    object = round(uncertain::pool_sd(sum_squares = sum(df_uncertain$sum_squares),
                                      sum_degrees_freedom = sum(df_uncertain$degrees_freedom)), 5),
    expected = 0.02742)

})

# NIST Stability analysis
# https://www.itl.nist.gov/div898/handbook/mpc/section4/mpc443.htm

test_that("uncertain gives same results as NIST reproducibility example 2.4.4.3", {

  df_nist <- tibble::tribble(
    ~level3, ~standard_deviation, ~degrees_freedom, ~nist_sum_squares,
    "Chk std 138", 0.0223, 1, 0.0004973,
    "Chk std 139", 0.0027, 1, 0.0000073,
    "Chk std 140", 0.0289, 1, 0.0008352,
    "Chk std 141", 0.0133, 1, 0.0001769,
    "Chk std 142", 0.0205, 1, 0.0004203)

  df_uncertain <- df_nist |>
    dplyr::mutate(sum_squares = round(uncertain::sum_squares(
      degrees_freedom = degrees_freedom,
      standard_deviation = standard_deviation), 7))

  expect_equal(object = df_uncertain$sum_squares,
               expected = df_nist$nist_sum_squares)

  expect_equal(
    object = round(uncertain::pool_sd(sum_squares = sum(df_uncertain$sum_squares),
                                      sum_degrees_freedom = sum(df_uncertain$degrees_freedom)), 4),
    expected = 0.0197)

})
