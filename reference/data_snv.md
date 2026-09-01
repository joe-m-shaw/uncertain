# Single nucleotide variant repeat data

Single nucleotide variant repeat data

## Usage

``` r
data_snv
```

## Format

A dataframe in tidy format with columns for sample, replicate, variant
and variant frequency. This dataset includes different numbers of
variants per sample, and different numbers of replicates per sample.
Some variants are different and some are shared between samples.

## Source

Frequency results are randomly generated with R.The code for generating
the data is saved in the data-raw folder.

## Examples

``` r
data_snv
#>      sample replicate         variant frequency
#> 1  Sample 1         1  BRAF c.1799T>A    11.150
#> 2  Sample 1         2  BRAF c.1799T>A    13.153
#> 3  Sample 1         3  BRAF c.1799T>A    11.636
#> 4  Sample 1         4  BRAF c.1799T>A    13.532
#> 5  Sample 1         5  BRAF c.1799T>A    13.762
#> 6  Sample 1         6  BRAF c.1799T>A    10.182
#> 7  Sample 2         1  BRAF c.1799T>A     6.584
#> 8  Sample 2         2  BRAF c.1799T>A     7.677
#> 9  Sample 2         3  BRAF c.1799T>A     6.654
#> 10 Sample 2         4  BRAF c.1799T>A     6.370
#> 11 Sample 2         5  BRAF c.1799T>A     7.871
#> 12 Sample 2         6  BRAF c.1799T>A     6.360
#> 13 Sample 2         1   NRAS c.182A>T    34.355
#> 14 Sample 2         2   NRAS c.182A>T    34.145
#> 15 Sample 2         3   NRAS c.182A>T    33.206
#> 16 Sample 2         4   NRAS c.182A>T    34.800
#> 17 Sample 2         5   NRAS c.182A>T    33.492
#> 18 Sample 2         6   NRAS c.182A>T    33.084
#> 19 Sample 3         1  TERT c.-124C>T    81.640
#> 20 Sample 3         2  TERT c.-124C>T    84.773
#> 21 Sample 3         3  TERT c.-124C>T    84.448
#> 22 Sample 3         4  TERT c.-124C>T    83.464
#> 23 Sample 3         5  TERT c.-124C>T    83.203
#> 24 Sample 3         1  TERT c.-146C>T    23.983
#> 25 Sample 3         2  TERT c.-146C>T    22.967
#> 26 Sample 3         3  TERT c.-146C>T    23.126
#> 27 Sample 3         4  TERT c.-146C>T    22.632
#> 28 Sample 3         5  TERT c.-146C>T    22.782
#> 29 Sample 3         1 JAK2 c.1949 C>T     0.789
#> 30 Sample 3         2 JAK2 c.1949 C>T     0.647
#> 31 Sample 3         3 JAK2 c.1949 C>T     1.463
#> 32 Sample 3         4 JAK2 c.1949 C>T     1.402
#> 33 Sample 3         5 JAK2 c.1949 C>T     1.191
```
