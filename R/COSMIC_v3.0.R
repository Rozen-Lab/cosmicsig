#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.0 - May 2019)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with one element \code{signature}, with the
#' same structure as \code{\link{signature}}, except that
#' sub-element GRCh37 does contain `SBS192`.
#'
#' @inheritSection signature Remark
#'
#' @name COSMIC_v3.0
#'
#' @examples
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS", quietly = TRUE)) {s
#'   install.packages("ICAMS")
#' }
#' library(ICAMS)
#' SBS96_sig_GRCh37_genome <- COSMIC_v3.0$signature$GRCh37$SBS96
#'
#' # Transform SBS96 GRCh37 genome signatures to GRCh37 exome signatures
#' SBS96_sig_GRCh37_exome <- TransformCatalog(
#'   catalog = SBS96_sig_GRCh37_genome,
#'   target.ref.genome = "GRCh37",
#'   target.region = "exome"
#' )
"COSMIC_v3.0"
