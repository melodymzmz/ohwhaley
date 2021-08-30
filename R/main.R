#' Imagine this is a resource-intensive calculation
#'
#' Also imagine that it is always correct and you don't need to test it
#'
#' @return results as a dataframe
calc_something <- function() {
  list(calc = data.frame(a = 1:3, b = 4:6))
}

#' Imagine this is the main function of a complicated script
#'
#' @param do_calc whether to run `calc_something_big()` or not (default: `FALSE`)
#'
#' @return results as a named list
#'
#' @examples
main <- function(do_calc = FALSE) {
 if(do_calc == TRUE) {
   calc_something()
   } else {
     list(calc = 'skipped `calc_something()`')
   }
}
