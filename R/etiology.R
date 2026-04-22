#' List of mutational signatures' proposed etiology summarized from COSMIC,
#' Catalogue Of Somatic Mutations In Cancer (v3.5 - November 2025)
#'
#' @description
#' **Deprecated.** The etiology information is no longer being updated.
#' It is not versioned at the COSMIC website and may not reflect
#' signatures added in recent COSMIC releases. For authoritative,
#' up-to-date etiologies consult
#' \url{https://cancer.sanger.ac.uk/signatures/} directly.
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
