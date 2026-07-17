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

group_sd(df = data_cnv, measurement_variable = dosage, sample, gene)
#> $output_df
#> # A tibble: 9 × 6
#>   sample   gene       sd     n n_minus_1 sum_squares
#>   <chr>    <chr>   <dbl> <int>     <dbl>       <dbl>
#> 1 Sample 1 BRCA1  0.0728     6         5     0.0265 
#> 2 Sample 1 CDKN2A 0.0450     6         5     0.0101 
#> 3 Sample 1 EGFR   0.0689     6         5     0.0237 
#> 4 Sample 2 BRCA1  0.0501     6         5     0.0126 
#> 5 Sample 2 CDKN2A 0.0444     6         5     0.00988
#> 6 Sample 2 EGFR   0.0696     6         5     0.0242 
#> 7 Sample 3 BRCA1  0.0444     6         5     0.00987
#> 8 Sample 3 CDKN2A 0.0279     6         5     0.00389
#> 9 Sample 3 EGFR   0.137      6         5     0.0941 
#> 
#> $pooled_sd
#> [1] 0.06910729
#> 
```
