#' Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In
#' Cancer (v3.2 - March 2021)
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
#' sbs96_sig_v3.2 <- COSMIC_v3.2$signature$GRCh37$SBS96
#'
"COSMIC_v3.2"
