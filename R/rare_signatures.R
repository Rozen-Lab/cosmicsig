#' Return a character vector of the IDs of rare SBS96 signatures
#'
#' @export
#'
#' @examples
#' rare_sigs <- rare_signatures()
rare_signatures <- function() {
  return(paste0("SBS", c(84:90, 91, 94)))
}
