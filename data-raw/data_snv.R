set.seed(123)

df_s1 <- data.frame(
  "sample" = rep(x = "Sample 1", each = 6),
  "replicate" = seq(1,6,by = 1),
  "variant" = rep(x = c("BRAF c.1799T>A"), each =6),
  "frequency" = c(runif(n = 6, min = 10, max = 14)))

df_s2 <- data.frame(
  "sample" = rep(x = "Sample 2", each = 6),
  "replicate" = seq(1,6,by = 1),
  "variant" = rep(x = c("BRAF c.1799T>A",
                        "NRAS c.182A>T"), each =6),
  "frequency" = c(
    runif(n = 6, min = 5, max = 8),
    runif(n = 6, min = 33, max = 35)
  ))

df_s3 <- data.frame(
  "sample" = rep(x = "Sample 3", each = 5),
  "replicate" = seq(1,5,by = 1),
  "variant" = rep(x = c("TERT c.-124C>T",
                        "TERT c.-146C>T",
                        "JAK2 c.1949 C>T"), each =5),
  "frequency" = c(
    runif(n = 5, min = 80, max = 85),
    runif(n = 5, min = 21, max = 24),
    runif(n = 5, min = 0.5, max = 1.5)
  ))

data_snv <- rbind(df_s1,
                   df_s2,
                   df_s3) |>
  dplyr::mutate(frequency = round(frequency, 3))

usethis::use_data(data_snv, overwrite = TRUE)
