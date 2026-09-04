test_that("group_stats calculates grouped statistics", {

  df <- data.frame(
    group = rep(c("a", "b"), each = 3),
    value = c(1, 2, 3, 2, 4, 6)
  )

  result <- group_stats(df, value, group)

  output <- result$output_df

  expect_equal(names(result), c("output_df", "pooled_sd"))

  expect_equal(output$mean, c(2, 4))

  expect_equal(output$standard_deviation, c(1, 2))

  expect_equal(output$replicates, c(3, 3))

  expect_equal(output$degrees_freedom, c(2, 2))

  expect_equal(output$sum_squares, c(2, 8))

  expect_equal(output$standard_error, c(1/ sqrt(3),
                                        2 / sqrt(3)))

  # Check pooled_sd calculation
  expect_equal(result$pooled_sd, sqrt(10 / 4))

})

test_that("group_stats calculates confidence intervals", {
  df <- data.frame(group = rep("a", 3), value = c(1, 2, 3))

  output <- group_stats(df, value, group)$output_df

  expect_equal(output$conf_int_95_min, 2 - qt(0.975, 2) / sqrt(3))

  expect_equal(output$conf_int_95_max, 2 + qt(0.975, 2) / sqrt(3))

})

test_that("group_stats validates the input data frame", {

  expect_error(
    group_stats("not_a_dataframe", value, group),
    regexp = "df must be a data frame"
  )

  expect_error(
    group_stats(data.frame(), value, group),
    regexp = "df must not be empty"
  )
})

test_that("group_stats rejects columns which don't exist", {

  df <- data.frame(group = c("a", "b"), value = c(1, 2))

  expect_error(group_stats(df,
                           measurement_variable = fake_column,
                           group))

  expect_error(group_stats(df,
                           measurement_variable = value,
                           fake_group))

})
