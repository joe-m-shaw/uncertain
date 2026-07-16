# Calculate standard deviation with grouped variables

Calculate standard deviation with grouped variables

## Usage

``` r
group_sd(df, measurement_variable, ...)
```

## Arguments

- df:

  A dataframe containing repeat measurement data

- measurement_variable:

  The variable to calculate the standard deviation for

- ...:

  Variables to group by

## Value

A list containing the grouped data frame with standard deviation, and
the pooled standard deviation

## Calculation source

This function performs the pooled standard deviation calculations
described in [NISTIR
6969](https://nvlpubs.nist.gov/nistpubs/ir/2019/NIST.IR.6969-2019.pdf)
Selected Laboratory and Measurement Practices and Procedures to Support
Basic Mass Calibrations (page 211, section 8.4).

## Examples

``` r

test_df <- data.frame(
"sample" = rep(x = c(1, 2, 3), each = 3*3),
"replicate" = rep(seq(1,6,by = 1), each = 3, times = 3),
"gene" = rep(x = c("gene1", "gene2", "gene3"), times = 3*6),
"dosage" = runif(n = 54, min = 1.8, max = 2.2))

group_sd(df = test_df, measurement_variable = dosage, sample, gene)
#> $output_df
#> # A tibble: 9 × 6
#>   sample gene      sd     n n_minus_1 sum_squares
#>    <dbl> <chr>  <dbl> <int>     <dbl>       <dbl>
#> 1      1 gene1 0.105      6         5      0.0549
#> 2      1 gene2 0.123      6         5      0.0762
#> 3      1 gene3 0.0662     6         5      0.0219
#> 4      2 gene1 0.126      6         5      0.0793
#> 5      2 gene2 0.0996     6         5      0.0496
#> 6      2 gene3 0.0699     6         5      0.0245
#> 7      3 gene1 0.113      6         5      0.0640
#> 8      3 gene2 0.117      6         5      0.0684
#> 9      3 gene3 0.132      6         5      0.0869
#> 
#> $pooled_sd
#> [1] 0.1080771
#> 
```
