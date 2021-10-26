#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.1 - June 2020)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with one element \code{signature}.
#'
#' * \code{signature} is a list with the elements:
#'     + `GRCh37`: Homo sapiens (human) genome assembly GRCh37.
#'         - `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'         - `SBS192`: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'         - `DBS78`: Strand-agnostic doublet-base substitutions.
#'         - `ID`: Strand-agnostic indels.
#'     + `GRCh38`: Homo sapiens (human) genome assembly GRCh38.
#'        - `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'        - `DBS78`: Strand-agnostic doublet-base substitutions.
#'     + `mm9`: Mus musculus (house mouse) genome assembly mm9.
#'        - `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'        - `DBS78`: Strand-agnostic doublet-base substitutions.
#'     + `mm10`: Mus musculus (house mouse) genome assembly mm10.
#'        - `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'        - `DBS78`: Strand-agnostic doublet-base substitutions.
#'     + `rn6`: Rattus norvegicus (Norway rat) genome assembly rn6.
#'        - `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'        - `DBS78`: Strand-agnostic doublet-base substitutions.
#'
#' @section Remark:
#' See examples below for transforming genome signatures to exome signatures. \cr
#' See \link[ICAMS]{CatalogRowOrder} in package ICAMS for the classification of mutation types.
#'
#' @name COSMIC_v3.1
#'
#' @examples
#' \dontrun{
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS", quietly = TRUE)) {
#'   install.packages("ICAMS")
#' }
#' library(ICAMS)
#' SBS96_sig_GRCh37_genome <- COSMIC_v3.1$signature$GRCh37$SBS96
#'
#' # Transform SBS96 GRCh37 genome signatures to GRCh37 exome signatures
#' SBS96_sig_GRCh37_exome <- TransformCatalog(catalog = SBS96_sig_GRCh37_genome,
#'                                            target.ref.genome = "GRCh37",
#'                                            target.region = "exome")
#' }
"COSMIC_v3.1"
