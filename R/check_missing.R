#' Throw an error if `x` contains `NA`.
#'
#' Returns nothing if `x` is good.
#'
#' @param x object to check
check_missing <- function(x) {
  if (anyNA(x)) {
    stop('`x` cannot contain `NA`')
  }
}
