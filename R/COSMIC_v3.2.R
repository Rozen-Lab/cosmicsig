#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.2 - March 2021)
#'
#' @source Files downloaded from
#'   \url{https://cancer.sanger.ac.uk/signatures/downloads/}, 2021 Sep and
#'   saved in \code{data-raw/COSMIC_v3.2/data/}. \cr Populated by
#'   \code{data-raw/COSMIC_v3.2/code/generate_COSMIC_v3.2_data.R}.
#'
#' @format A list with two elements, \code{signature} and \code{etiology}.
#'
#' * \code{signature} is a list with one element:
#'      + \code{genome}: A list with the elements:
#'         - \code{SBS96}: Strand-agnostic single-base substitutions in trinucleotide context.
#'         - \code{SBS192}: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'         - \code{DBS78}: Strand-agnostic doublet-base substitutions.
#'         - \code{ID}: Strand-agnostic indels.
#'
#' * \code{etiology} is a list with elements:
#'     + \code{SBS96}
#'     + \code{SBS192}
#'     + \code{DBS78}
#'     + \code{ID}
#'
#'     Each element in \code{etiology} is a single column matrix with rownames being the
#'     signature IDs and values being a short character string
#'     description of the proposed etiology. \cr
#'
#'     In general use \code{\link{get_etiology}}, which handles new
#'     signatures without elements in \code{etiology}.
#'
#' @section Remark:
#' The signatures are all from Human GRCh37 reference genome.
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
#' SBS96_sigs <- COSMIC_v3.2$signature$genome$SBS96
"COSMIC_v3.2"
