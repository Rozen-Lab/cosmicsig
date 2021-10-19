#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.0 - May 2019)
#'
#' @source Files downloaded from
#'   \url{https://cancer.sanger.ac.uk/signatures/downloads/}, 2021 Oct and
#'   saved in \code{data-raw/COSMIC_v3.0/data/}. \cr Populated by
#'   \code{data-raw/COSMIC_v3.0/code/generate_COSMIC_v3.0_genome_sigs.R}.
#'
#' @format A list with one element \code{signature}.
#'
#' * \code{signature} is a list with the elements:
#'     + \code{SBS96}: Strand-agnostic single-base substitutions in trinucleotide context.
#'     + \code{SBS192}: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'     + \code{DBS78}: Strand-agnostic doublet-base substitutions.
#'     + \code{ID}: Strand-agnostic indels.
#'
#' @section Remark:
#' \code{SBS96} and \code{DBS78} signatures are from Human \strong{GRCh38} reference genome.
#' \code{SBS192} and \code{ID} signatures are from Human \strong{GRCh37} reference genome.
#' See \link[ICAMS]{CatalogRowOrder} for the classification of mutation types.
#'
#' @name COSMIC_v3.0
#'
#' @examples
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome and between species, users can use ICAMS to do the transformations.
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
#'
"COSMIC_v3.0"
