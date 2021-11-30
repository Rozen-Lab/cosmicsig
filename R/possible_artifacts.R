#' Return a character vector of the names of possible SBS96 signature artifacts
#'
#' @export
#'
#' @return A character vector of the names of possible SBS96 signature
#'   artifacts.
#'
#' @examples
#' artifact_sigs <- possible_artifacts()
possible_artifacts <- function() {
  return(c(
    "SBS27", "SBS43", "SBS45", "SBS46", "SBS47",
    "SBS48", "SBS49", "SBS50", "SBS51", "SBS52",
    "SBS53", "SBS54", "SBS55", "SBS56",
    "SBS57", "SBS58", "SBS59", "SBS60"
  ))
}
