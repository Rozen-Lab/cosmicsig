#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.1 - June 2020)
#'
#' @source Files downloaded from
#'   \url{https://cancer.sanger.ac.uk/signatures/downloads/}, 2021 Oct and
#'   saved in \code{data-raw/COSMIC_v3.1/data/}. \cr Populated by
#'   \code{data-raw/COSMIC_v3.1/code/generate_COSMIC_v3.1_genome_sigs.R}.
#'
#' @format A list with one element \code{signature}.
#'
#' * \code{signature} is a list with one element:
#'      + \code{genome}: A list with the elements:
#'         - \code{SBS96}: Strand-agnostic single-base substitutions in trinucleotide context.
#'         - \code{SBS192}: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'         - \code{DBS78}: Strand-agnostic doublet-base substitutions.
#'         - \code{ID}: Strand-agnostic indels.
#'
#' @section Remark:
#' The signatures are all from Human GRCh37 reference genome.
#'
#' @name COSMIC_v3.1
#'
#' @examples
#' COSMIC_v3.1_SBS96.sigs <- COSMIC_v3.1$signature$genome$SBS96
"COSMIC_v3.1"
