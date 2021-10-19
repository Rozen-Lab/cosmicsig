#' List of mutational signature's proposed etiology summarized from COSMIC, the
#' Catalogue Of Somatic Mutations In Cancer (v3.2 - March 2021)
#'
#' @format
#'
#' A list with the elements:
#' * SBS96
#' * SBS192
#' * DBS78
#' * ID
#'
#' Each list element is a single column matrix with rownames being the signature
#' IDs and values being a short character string description of the proposed
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
#' SBS96_etiology <- etiology$SBS96
#'
"etiology"
