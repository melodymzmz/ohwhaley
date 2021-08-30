#' Check that the outcome column is binary
#'
#' @param dataset dataframe with a column containing outcomes
#' @param outcome_colname name of the column containing outcomes
check_binary_outcome <- function(dataset, outcome_colname) {
  outcomes <- data.frame(dataset)[, outcome_colname] %>% unique()
  num_outcomes <- length(outcomes)
  if (num_outcomes != 2) {
    stop("A binary outcome variable is required, but this dataset has ",
         num_outcomes, " outcome(s): ", paste(outcomes, collapse = ", "))
  }
}
