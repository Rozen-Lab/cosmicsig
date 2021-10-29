#' Mutational signatures data from COSMIC, the Catalogue Of Somatic Mutations In
#' Cancer, (v3.2 - March 2021)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with two elements, \code{signature} and \code{etiology}.
#'
#' * \code{signature} is a list with the elements:
#'     + `GRCh37`: Homo sapiens (human) genome assembly GRCh37.
#'     + `GRCh38`: Homo sapiens (human) genome assembly GRCh38.
#'     + `mm9`: Mus musculus (house mouse) genome assembly mm9.
#'     + `mm10`: Mus musculus (house mouse) genome assembly mm10.
#'     + `rn6`: Rattus norvegicus (Norway rat) genome assembly rn6.
#'
#'     Each element contains the sub elements:
#'     + `SBS96`: Strand-agnostic single-base substitutions in trinucleotide context.
#'     + `DBS78`: Strand-agnostic doublet-base substitutions.
#'
#'     Element GRCh37 contains the additional sub elements:
#'     + `SBS192`: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'     + `ID`: Strand-agnostic indels.
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
#' \dontrun{
#' # As the abundances of the source sequence of the mutations vary between genome
#' # and exome, users can use package ICAMS to do the transformations.
#' if (!requireNamespace("ICAMS", quietly = TRUE)) {
#'   install.packages("ICAMS")
#' }
#' library(ICAMS)
#' SBS96_sig_GRCh37_genome <- COSMIC_v3.2$signature$GRCh37$SBS96
#'
#' # Transform SBS96 GRCh37 genome signatures to GRCh37 exome signatures
#' SBS96_sig_GRCh37_exome <- TransformCatalog(
#'   catalog = SBS96_sig_GRCh37_genome,
#'   target.ref.genome = "GRCh37",
#'   target.region = "exome"
#' )
#' }
"COSMIC_v3.2"
