#' List of mutational signatures's proposed etiology summarized from COSMIC,
#' Catalogue Of Somatic Mutations In Cancer (v3.3 - June 2022)
#'
#' @format
#'
#' A list with the elements:
#' * SBS96
#' * DBS78
#' * ID
#'
#' Each element is a single-column matrix with rownames being the signature
#' IDs and values being a short string describing the proposed
#' etiology.
#'
#' In general use \code{\link{get_etiology}}, which handles new
#' signatures do not have an element in \code{etiology}.
#' @name etiology
#'
#' @md
#'
#' @source \url{https://cancer.sanger.ac.uk/signatures/}.
#'
#' @examples
#' sbs96_etiology <- etiology$SBS96
"etiology"
