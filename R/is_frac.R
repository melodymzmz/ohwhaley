#' Check whether the number is a fraction.
#'
#' @param frac fraction (numeric)
#' @return TRUE if `frac` is in [0, 1], else `FALSE`
is_frac <- function(frac) {
  if (is.numeric(frac) == FALSE) {
    stop("`frac` must be numeric")
  } else if (any(frac > 0 && frac < 1)) {
    return(TRUE)
  } else {
    return(FALSE)
  }

}
