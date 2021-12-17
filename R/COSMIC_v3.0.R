#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.0 - May 2019)
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @format A list with one element \code{signature}, with the
#' same structure as \code{\link{signature}}, except that
#' sub-element GRCh37 does contain `SBS192`.
#'
#' @inheritSection signature Remark
#'
#' @name COSMIC_v3.0
#'
#' @examples
#' sbs96_sig_v3.0 <- COSMIC_v3.0$signature$GRCh37$SBS96
#'
"COSMIC_v3.0"
