% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpainMap.R
\name{SpainMap}
\alias{SpainMap}
\title{Spain National map information}
\usage{
SpainMap(regionvalue, main, name, bigred = TRUE)
}
\arguments{
\item{regionvalue}{vector with the values that you want to plot in percentiles in the Spain map.}

\item{main}{the specific title of the map plot}

\item{name}{the assigned name for the legend in map plot.}

\item{bigred}{if the user wants red color for bigger values in the regions \code{bigred} == \code{TRUE} (default value). However if the user wants to modify the colors and assign red to lower values \code{bigred} == \code{FALSE}.}
}
\value{
a map from the regions of Spain colored with the variable provided by the user.
}
\description{
This data contains information to plot the percentiles plot in Spanish regions. Therefore, the users only have to provide a specific variable to show in regions of Spain.
}
\examples{
name <- c("Ii")
main <- c("Multiplicative for males")
regionvalue <- c(0.131867619, -0.063994652,  0.088094096,
                 0.019685552,  0.064671498,   0.012212161,
                -0.088864474, -0.146079884, -0.017703536,
                 0.050376721,  0.052476852, -0.022871202,
                -0.093952332,  0.049266816, -0.101224890,
                 0.001481333, -0.078523511)

library(sf)

SpainMap(regionvalue, main, name)

}
\references{
Spanish National Institute of Statistics (INE) (2023). Tablas de mortalidad, metodologia.
Technical report, Instituto Nacional de Estadistica
}
