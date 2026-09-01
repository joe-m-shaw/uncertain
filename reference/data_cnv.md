# Copy number variant repeat data

Copy number variant repeat data

## Usage

``` r
data_cnv
```

## Format

A dataframe in tidy format with columns for sample, replicate, gene and
dosage. Dosages for 3 genes are provided for each sample replicate.

## Source

Dosage results are randomly generated with R. The code for generating
the data is saved in the data-raw folder.

## Examples

``` r
data_cnv
#>      sample replicate   gene    dosage
#> 1  Sample 1         1  BRCA1 1.9575155
#> 2  Sample 1         2  BRCA1 2.0576610
#> 3  Sample 1         3  BRCA1 1.9817954
#> 4  Sample 1         4  BRCA1 2.0766035
#> 5  Sample 1         5  BRCA1 2.0880935
#> 6  Sample 1         6  BRCA1 1.9091113
#> 7  Sample 1         1 CDKN2A 2.0056211
#> 8  Sample 1         2 CDKN2A 2.0784838
#> 9  Sample 1         3 CDKN2A 2.0102870
#> 10 Sample 1         4 CDKN2A 1.9913229
#> 11 Sample 1         5 CDKN2A 2.0913667
#> 12 Sample 1         6 CDKN2A 1.9906668
#> 13 Sample 1         1   EGFR 2.0355141
#> 14 Sample 1         2   EGFR 2.0145267
#> 15 Sample 1         3   EGFR 1.9205849
#> 16 Sample 1         4   EGFR 2.0799650
#> 17 Sample 1         5   EGFR 1.9492175
#> 18 Sample 1         6   EGFR 1.9084119
#> 19 Sample 2         1  BRCA1 1.9655841
#> 20 Sample 2         2  BRCA1 2.0909007
#> 21 Sample 2         3  BRCA1 2.0779079
#> 22 Sample 2         4  BRCA1 2.0385607
#> 23 Sample 2         5  BRCA1 2.0281014
#> 24 Sample 2         6  BRCA1 2.0988540
#> 25 Sample 2         1 CDKN2A 0.5311412
#> 26 Sample 2         2 CDKN2A 0.5417061
#> 27 Sample 2         3 CDKN2A 0.5088132
#> 28 Sample 2         4 CDKN2A 0.5188284
#> 29 Sample 2         5 CDKN2A 0.4578319
#> 30 Sample 2         6 CDKN2A 0.4294227
#> 31 Sample 2         1   EGFR 2.0926048
#> 32 Sample 2         2   EGFR 2.0804598
#> 33 Sample 2         3   EGFR 2.0381411
#> 34 Sample 2         4   EGFR 2.0590935
#> 35 Sample 2         5   EGFR 1.9049227
#> 36 Sample 2         6   EGFR 1.9955592
#> 37 Sample 3         1  BRCA1 2.0516919
#> 38 Sample 3         2  BRCA1 1.9432816
#> 39 Sample 3         3  BRCA1 1.9636362
#> 40 Sample 3         4  BRCA1 1.9463252
#> 41 Sample 3         5  BRCA1 1.9285600
#> 42 Sample 3         6  BRCA1 1.9829093
#> 43 Sample 3         1 CDKN2A 1.9827449
#> 44 Sample 3         2 CDKN2A 1.9737691
#> 45 Sample 3         3 CDKN2A 1.9304889
#> 46 Sample 3         4 CDKN2A 1.9277612
#> 47 Sample 3         5 CDKN2A 1.9466068
#> 48 Sample 3         6 CDKN2A 1.9931925
#> 49 Sample 3         1   EGFR 7.9063891
#> 50 Sample 3         2   EGFR 8.1431311
#> 51 Sample 3         3   EGFR 7.8183325
#> 52 Sample 3         4   EGFR 7.9768800
#> 53 Sample 3         5   EGFR 8.1195699
#> 54 Sample 3         6   EGFR 7.8487597
```
