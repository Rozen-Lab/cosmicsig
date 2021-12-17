#' Translate SBS96 signature IDs to SBS192 signature IDs by adding "-E" if necessary
#'
#' @description "-E" added to the name of a transcriptional strand bias
#'   signature indicates that it was extracted only from exome sequencing data,
#'   and thus reflects transcriptional strand bias in the exome rather than in
#'   the entire transcript, including introns.
#'
#' @param sig_ids Character vector of SBS96 signature IDs.
#'
#' @export
#' @return Character vector of corresponding SBS192 signature IDs; some
#'   have "-E" (for exome) post-pended.
#'
#' @examples
#' sbs96_ids <- c("SBS1", "SBS23", "SBS25")
#' sbs192_ids <- SBS96_ID_to_SBS192_ID(sbs96_ids)
SBS96_ID_to_SBS192_ID <- function(sig_ids) {
  need_minus_E <-
    c(
      "SBS23", "SBS25", "SBS27", "SBS29",
      "SBS42", "SBS45", "SBS46", "SBS59"
    )
  rr <- lapply(
    sig_ids,
    function(x) ifelse(x %in% need_minus_E, paste0(x, "-E"), x)
  )
  return(unlist(rr))
}
