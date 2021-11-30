#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.2 - March 2021)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with two elements, \code{signature} and \code{etiology}.
#'
#' * \code{signature} is a list with the same structure as
#'   \code{\link{signature}}.
#'
#' * \code{etiology} is a list with the same structure as
#'    \code{\link{etiology}}.
#'
#' @inheritSection signature Remark
#'
#' @section Note:
#' SBS10c, SBS10d, SBS91, SBS92, SBS93, SBS94 (total 6) new SBS signatures were
#' added in COSMIC v3.2. See the news from COSMIC release for more details
#' \url{https://cosmic-blog.sanger.ac.uk/cosmic-mutational-signatures-release-v3-2/}
#'
#' @name COSMIC_v3.2
#'
#' @md
#'
#' @examples
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS")) {
#'   install.packages("ICAMS")
#'   library(ICAMS)
#'
#'   SBS96_sig_GRCh37_genome <- COSMIC_v3.2$signature$GRCh37$SBS96
#'
#'   # Transform SBS96 GRCh37 genome signatures to GRCh37 exome signatures
#'   SBS96_sig_GRCh37_exome <- TransformCatalog(
#'     catalog = SBS96_sig_GRCh37_genome,
#'     target.ref.genome = "GRCh37",
#'     target.region = "exome"
#'   )
#' }
"COSMIC_v3.2"
