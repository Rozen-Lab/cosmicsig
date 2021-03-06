#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.2 - March 2021)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with the following elements:
#'
#'     * GRCh37: Homo sapiens (human) genome assembly GRCh37.
#'     * GRCh38: Homo sapiens (human) genome assembly GRCh38.
#'     * mm9: Mus musculus (house mouse) genome assembly mm9.
#'     * mm10: Mus musculus (house mouse) genome assembly mm10.
#'     * rn6: Rattus norvegicus (Norway rat) genome assembly rn6.
#'
#'     Each element contains the sub elements:
#'
#'     * SBS96: Strand-agnostic single-base substitutions in trinucleotide context.
#'     * DBS78: Strand-agnostic doublet-base substitutions.
#'
#'     Element GRCh37 contains the additional sub elements:
#'
#'     * SBS192: Transcriptionally stranded single-base substitutions in trinucleotide context.
#'     * ID: Strand-agnostic indels (short insertions and deletions).
#'
#' @section Remark:
#' The signatures are all genome signatures. \cr See \link[ICAMS]{CatalogRowOrder}
#' in package ICAMS for the classification of mutation types.
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
#' sbs96_sig <- signature$GRCh37$SBS96
#'
"signature"
