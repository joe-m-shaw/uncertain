#' Copy number variant repeat data
#'
#' @format A dataframe in tidy format with columns for sample,
#' replicate, gene and dosage. Dosages for 3 genes are provided for each sample
#' replicate.
#'
#' @source Dosage results are randomly generated with R.
"data_cnv"

#' Single nucleotide variant repeat data
#'
#' @format A dataframe in tidy format with columns for sample, replicate,
#' variant and variant frequency. This dataset includes different numbers of
#' variants per sample, and different numbers of replicates per sample. Some
#' variants are different and some are shared between samples.
#'
#' @source Frequency results are randomly generated with R.
"data_snv"
