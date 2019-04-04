#' Extract Mean Values of Blood Biomarkers
#'
#' This function accepts a dataframe as input and extracts the mean value of
#' each numeric variable.
#'
#' @param df a \code{data.frame} with at least one numeric variable in order to
#' get a non-empty result.
#' @param var NULL (default) or the unquoted name of the variable by which to
#' group the input df.
#' @return a data.frame with the mean values of each numeric
#' @importFrom magrittr %>%
#' @author John Doe
#' @export
#' @examples
#' \dontrun{
#' library(magrittr)
#' data.frame(x1 = c(1,2,3), x2 = c(4,5,6)) %>%
#'   bloodstats::bloodmeans()
#'
#' # Grouped bloodmeans
#' bloodstats::df_example %>%
#'   bloodstats::bloodmeans(var = group)
#' }
bloodmeans <- function(df, var = NULL) {

  # Quote input
  var <- rlang::enquo(var)

  if (!rlang::quo_is_null(var)) {
    df <-
      df %>%
      dplyr::group_by(!!var)
  }

  df %>%
    dplyr::summarise_if(is.numeric, mean, na.rm = TRUE)
}
