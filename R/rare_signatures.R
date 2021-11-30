#' Return a character vector of the names of rare SBS96 signatures
#'
#' @export
#'
#' @return A character vector of the names of rare SBS96 signatures.
#'
#' @examples
#' rare_sigs <- rare_signatures()
rare_signatures <- function() {
  return(paste0("SBS", c(84:90, 91, 94)))
}
