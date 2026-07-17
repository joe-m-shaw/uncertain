# Calculate statistical variation within groups

Calculate statistical variation within groups

## Usage

``` r
group_stats(df, measurement_variable, ...)
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

## Pooled standard deviation

This function includes the pooled standard deviation calculations
described in [NISTIR
6969](https://nvlpubs.nist.gov/nistpubs/ir/2019/NIST.IR.6969-2019.pdf)
Selected Laboratory and Measurement Practices and Procedures to Support
Basic Mass Calibrations (page 211, section 8.4).

## Examples

``` r

head(data_cnv)
#>     sample replicate  gene   dosage
#> 1 Sample 1         1 BRCA1 1.957516
#> 2 Sample 1         2 BRCA1 2.057661
#> 3 Sample 1         3 BRCA1 1.981795
#> 4 Sample 1         4 BRCA1 2.076603
#> 5 Sample 1         5 BRCA1 2.088093
#> 6 Sample 1         6 BRCA1 1.909111

group_stats(df = data_cnv, measurement_variable = dosage, sample, gene)
#> $output_df
#> # A tibble: 9 × 10
#>   sample   gene    mean standard_deviation conf_int_95_min conf_int_95_max
#>   <chr>    <chr>  <dbl>              <dbl>           <dbl>           <dbl>
#> 1 Sample 1 BRCA1  2.01              0.0728           1.94            2.09 
#> 2 Sample 1 CDKN2A 2.03              0.0450           1.98            2.08 
#> 3 Sample 1 EGFR   1.98              0.0689           1.91            2.06 
#> 4 Sample 2 BRCA1  2.05              0.0501           2.00            2.10 
#> 5 Sample 2 CDKN2A 0.498             0.0444           0.451           0.545
#> 6 Sample 2 EGFR   2.03              0.0696           1.96            2.10 
#> 7 Sample 3 BRCA1  1.97              0.0444           1.92            2.02 
#> 8 Sample 3 CDKN2A 1.96              0.0279           1.93            1.99 
#> 9 Sample 3 EGFR   7.97              0.137            7.82            8.11 
#> # ℹ 4 more variables: replicates <int>, degrees_freedom <dbl>,
#> #   sum_squares <dbl>, standard_error <dbl>
#> 
#> $pooled_sd
#> [1] 0.06910729
#> 
```
