set.seed(123)

data_cnv <- data.frame(
  "sample" = rep(x = c("Sample 1", "Sample 2", "Sample 3"), each = 3*6),
  "replicate" = rep(seq(1,6,by = 1), times = 9),
  "gene" = rep(x = c("BRCA1", "CDKN2A", "EGFR"), each =6, times = 3),
  "dosage" = c(
    # Normal sample
    runif(n = 6, min = 1.9, max = 2.1),
    runif(n = 6, min = 1.9, max = 2.1),
    runif(n = 6, min = 1.9, max = 2.1),
    # Sample with CDKN2A deletion
    runif(n = 6, min = 1.9, max = 2.1),
    runif(n = 6, min = 0.4, max = 0.6),
    runif(n = 6, min = 1.9, max = 2.1),
    # Sample with EGFR amplification
    runif(n = 6, min = 1.9, max = 2.1),
    runif(n = 6, min = 1.9, max = 2.1),
    runif(n = 6, min = 7.8, max = 8.2)))

usethis::use_data(data_cnv, overwrite = TRUE)
