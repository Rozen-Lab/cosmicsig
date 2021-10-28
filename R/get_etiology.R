#' Get the proposed etiology of COSMIC signature
#'
#' @description The level of evidence supporting the proposed etiologies varies.
#'   In addition, some proposed etiologies are more akin to associations than
#'   specific, mechanistic causes.
#'
#' @param mutation_type Character string, one of "SBS96", "SBS192", "DBS78",
#'   "ID".
#'
#' @param sig_id Character vector with signature ids, e.g. \code{c("SBS3",
#'   "SBS5")}.
#'
#' @return A character vector of the same length as \code{sig_id},
#' each element of which is the etiology of the
#' corresponding signature, if known, or else the empty string.
#'
#' @section Note:
#' The etiologies information is not versionized in COSMIC website compared to
#' signatures.
#'
#' @examples
#' get_etiology(mutation_type = "ID", sig_id = c("ID1", "foo", "ID3"))
#' @export
get_etiology <- function(mutation_type, sig_id) {
  legal <- c("SBS96", "SBS192", "DBS78", "ID")
  if (!mutation_type %in% legal) {
    stop(
      "get_etiology: mutation_type must be one of ",
      paste(legal, collapse = "")
    )
  }

  mm <- cosmicsig::etiology[[mutation_type]]
  rr <- sapply(sig_id,
    function(one.id) {
      if (one.id %in% rownames(mm)) {
        return(mm[one.id, ])
      } else {
        return("")
      }
    },
    USE.NAMES = TRUE,
    simplify = TRUE
  )
  return(rr)
}
