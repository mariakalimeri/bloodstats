#' Random Metabolic Data
#'
#' A dataframe with random data for blood and urine, males and females.
#'
#' @format A data frame (tibble) with 100 rows and 4 columns.
#' \describe{
#'   \item{id}{ID of individual.}
#'   \item{biofluid}{Biofluid type, blood or urine}
#'   \item{males}{Log odds for incident type 2 diabetes.}
#'   \item{females}{Standard error.}
#' }
#' @source Generated with a random \code{set.seed(34)}
"df_example"
