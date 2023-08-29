#' cosmicsig: A package of mutational signatures from COSMIC (Catalogue
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
#' 3 mutation types:
#'
#' * SBS (single base substitutions in the context
#' of preceding and following bases, called SBS96
#' in this package)
#'
#' * DBS (doublet base substitutions, called DBS78 in
#' this package)
#'
#' * ID (small insertions and deletions)
#'
#' The package variable \code{\link{etiology}} contains
#' information on known or hypothesized causes of
#' mutational signatures. In general, it is better to use
#' \code{\link{get_etiology}}.
#'
#' Earlier releases are available in the
#' variables COSMIC_*version*, e.g.
#' \code{\link{COSMIC_v3.2}}.
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
#' and for mouse and rat.
#' ID signatures do not take into consideration
#' differing nucleotide composition between
#' reference genomes because relating this
#' to the ID mutational categories would be
#' extremely complicated.
#'
#' Some signatures are due to experimental
#' or laboratory artifacts. Function
#' \code{\link{possible_artifacts}}
#' returns these.
#
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @docType package
#' @name cosmicsig
#' @aliases cosmicsig-package
NULL
