#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.5 - November 2025)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with two elements, \code{signature} and \code{etiology}.
#'
#' * \code{signature} is a list with the same structure as
#'   \code{\link{signature}}.
#'
#' * \code{etiology} is a list with the same structure as
#'    \code{\link{etiology}}.
#'
#' @inheritSection signature Remark
#'
#' @name COSMIC_v3.5
#'
#' @md
#'
#' @examples
#' sbs96_sig_v3.5 <- COSMIC_v3.5$signature$GRCh37$SBS96
#'
"COSMIC_v3.5"
