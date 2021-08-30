#' Calculate relative abundances
#'
#' @param dat data.frame of absolute OTU abundances with columns as OTUs and rows as samples
#'
#' @return data.frame of relative OTU abundances
#' @examples
#' to_rel_abun(data.frame(otu1 = 1:3, otu2 = 0:2))
to_rel_abun <- function(dat) {
  library(dplyr)
  if (any(dat < 0)) {
    stop("Dataset contains abundance less than zero.")
  }
  return(
    dat %>%
      rowwise() %>%
      mutate(abun_sum = sum(c_across())) %>%
      mutate(across(-abun_sum, ~ .x / abun_sum)) %>%
      ungroup()
  )
}
