#' cosmicsig: A package of mutational signatures from COSMIC (the Catalogue
#' Of Somatic Mutations In Cancer)
#' \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' For a general introduction to mutational signatures
#' and the techniques used to discover them, see
#' Alexandrov et al., 2020 \doi{10.1038/s41586-020-1943-3}.
#'
#' This is a data package with 2 main package variables:
#' \code{\link{signature}} and \code{\link{etiology}}.
#'
#' The \code{\link{signature}} variable contains the
#' latest mutational signature profiles released on
#' \url{https://cancer.sanger.ac.uk/signatures/} for
#' three mutation types:
#'
#' * SBS (single base substitutions in the context
#' of preceding and following bases, called SBS96
#' in this package)
#'
#' * Strand bias SBS: SBSs from transcribed
#' regions (exons and introns), that take into
#' into consideration the transcriptional strand.
#'
#' * DBS (doublet base substitutions, called DBS78 in
#' this package)
#'
#' * ID (small insertions and deletions)
#'
#' Earlier releases are available in the
#' variables COSMIC_*version*, e.g.
#' \code{\link{COSMIC_v3.2}}.
#'
#' There are also two functions for handling COSMIC signatures:
#'
#' The function \code{\link{get_etiology}} returns the
#' known or hypothesized etiologies of signatures.
#'
#' The profiles of SBSs signatures depend on the
#' frequencies of trinucleotides in a genome
#' and profiles of DBS signatures depend on the
#' frequencies of dinucleotides in a genome.
#' Therefore COSMIC and this package provide
#' slightly different signatures for different
#' reference genomes. COSMIC and this package offer
#' versions of SBS and DBS signatures for
#' human GRCh37 (also known as hg19) and GRCh38,
#' and for mouse and rat. However strand bias
#' SBS signatures are only available for GRCh37.
#' There are also some minor differences in
#' identifiers for stranded SBSs, and
#' helper function to deal with these.
#' See \code{\link{SBS96_ID_to_SBS192_ID}}.
#'
#' Some signatures are due to experimental
#' or laboratory artifacts. Function
#' \code{\link{possible_artifacts}}
#' returns these.
#
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @docType package
#' @name cosmicsig
NULL
