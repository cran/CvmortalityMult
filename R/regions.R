#' regions
#'
#' Data from the Spanish region of Spain which are provided to plot an indicator.
#' This dataset contains a plot with the information of Spain regions (geometry and name of every region).
#'
#' @name regions
#'
#' @format A data frame with 600 rows and 9 columns with class \code{"SpainRegionsData"} including the following information
#' * `Codigo` a vector containing the code of every region of Spain.
#' * `Texto` a vector containing the name of every region of Spain.
#' * `Texto_Alt` a vector containing the long name of every region of Spain.
#' * `Ii` a vector containing a possible value of one indicator to be shown.
#' * `geometry` the dimension of every region of Spain. This vector allows to plot the regions of Spain.
#'
#' @docType data
#' @return a plot with the Spain regions colored by the indicator provided.
#'
#' @references
#' Spanish National Institute of Statistics (INE) (2023). Tablas de mortalidad, metodologia.
#' Technical report, Instituto Nacional de Estadistica
#'
#' @examples
#' #The example takes more than 5 seconds because it includes
#' #several fitting and forecasting process and hence all
#' #the process is included in donttest
#' \donttest{
#' #In this case, we show the region dataset applying it to a multipopulation model.
#' #First, we present the dataset
#'
#' regions
#'
#' ages <- c(0, 1, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90)
#'
#' #Then, we fit the multiplicative model
#' library(gnm)
#' multiplicative_Spainmales <- fitLCmulti(model = "multiplicative",
#'                                         qxt = SpainRegions$qx_male,
#'                                         periods = c(1991:2020),
#'                                         ages = c(ages),
#'                                         nPop = 18,
#'                                         lxt = SpainRegions$lx_male)
#'
#' multiplicative_Spainmales
#' library(sf)
#' #To show the values of the population indicator in the Spanish map.
#' SpainMap(regionvalue = multiplicative_Spainmales$Ii[2:18],
#'          main = c("Multiplicative for males"),
#'          name = c("Ii"))
#' }
"regions"
