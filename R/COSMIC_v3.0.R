#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.0 - May 2019)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with one element \code{signature}.
#'
#' * \code{signature} is a list with the elements:
#'     + \code{SBS96}: Strand-agnostic single-base substitutions in trinucleotide context.
#'     + \code{DBS78}: Strand-agnostic doublet-base substitutions.
#'     + \code{ID}: Strand-agnostic indels.
#'
#' @section Remark:
#' \code{SBS96} and \code{DBS78} signatures are from the latest \strong{Human GRCh38} reference genome. \cr
#' Because COSMIC only has the GRCh37 version of indel signatures, so \code{ID}
#' signatures are from \strong{Human GRCh37} reference genome. \cr
#' See examples below for transforming genome signatures to exome signatures. \cr
#' See \link[ICAMS]{CatalogRowOrder} in package ICAMS for the classification of mutation types.
#'
#' @name COSMIC_v3.0
#'
#' @examples
#' \dontrun{
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome and between species, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS", quietly = TRUE)) {
#'   install.packages("ICAMS")
#' }
#' library(ICAMS)
#' SBS96_sigs_GRCh38_genome <- COSMIC_v3.0$signature$SBS96
#'
#' # Transform SBS96 GRCh38 genome signatures to GRCh38 exome signatures
#' SBS96_sigs_GRCh38_exome <- TransformCatalog(catalog = SBS96_sigs_GRCh38_genome,
#'                                             target.ref.genome = "GRCh38",
#'                                             target.region = "exome")
#'
#' # Transform SBS96 GRCh38 genome signatures to GRCh37 genome signatures
#' SBS96_sigs_GRCh37_genome <- TransformCatalog(catalog = SBS96_sigs_GRCh38_genome,
#'                                              target.ref.genome = "GRCh37",
#'                                              target.region = "genome")
#'
#' # Transform SBS96 GRCh38 genome signatures to mm10 genome signatures
#' SBS96_sigs_mm10_genome <- TransformCatalog(catalog = SBS96_sigs_GRCh38_genome,
#'                                            target.ref.genome = "mm10",
#'                                            target.region = "genome")
#' }
"COSMIC_v3.0"
