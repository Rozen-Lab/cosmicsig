#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer (v3.2 - March 2021)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with the following elements:
#'  * \code{SBS96}: Strand-agnostic single-base substitutions in trinucleotide context.
#'  * \code{SBS192}: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'  * \code{DBS78}: Strand-agnostic doublet-base substitutions.
#'  * \code{ID}: Strand-agnostic indels.
#'
#' @section Remark:
#' \code{SBS96} and \code{DBS78} signatures are from the latest \strong{Human GRCh38} reference genome. \cr
#' Because COSMIC only has the GRCh37 version of SBS transcriptional strand bias and indel signatures, so
#' \code{SBS192} and \code{ID} signatures are from \strong{Human GRCh37} reference genome. \cr
#' See examples below for transforming genome signatures to exome signatures. \cr
#' See \link[ICAMS]{CatalogRowOrder} in package ICAMS for the classification of mutation types.
#'
#' @section Note:
#' SBS10c, SBS10d, SBS91, SBS92, SBS93, SBS94 (total 6) new SBS signatures were
#' added in COSMIC v3.2. See the news from COSMIC release for more details
#' \url{https://cosmic-blog.sanger.ac.uk/cosmic-mutational-signatures-release-v3-2/}
#'
#' @name signature
#'
#' @md
#'
#' @examples
#' \dontrun{
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome and between species, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS", quietly = TRUE)) {
#'   install.packages("ICAMS")
#' }
#' library(ICAMS)
#' SBS96_sigs_GRCh38_genome <- signature$SBS96
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
"signature"
