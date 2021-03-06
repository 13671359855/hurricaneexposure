% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_exposure.R
\name{map_distance_exposure}
\alias{map_distance_exposure}
\title{Map counties with distance exposure}
\usage{
map_distance_exposure(storm, dist_limit, add_track = TRUE)
}
\arguments{
\item{storm}{Character string giving the name of the storm to plot (e.g.,
"Floyd-1999")}

\item{dist_limit}{Maximum distance, in kilometers, of how close the storm
track must come to the county's population mean center to classify
the county as "exposed" to the storm.}

\item{add_track}{TRUE / FALSE of whether to add the storm's track to the map. The
default is TRUE.}
}
\value{
Plots a map showing whether eastern US counties were exposed or
   unexposed to a specific storm based on a distance criterion.
}
\description{
Map counties as "exposed" or "unexposed" based on the criterion that the
storm came within a given distance (specified by \code{dist_limit}) of
the county's population mean center.
}
\examples{
# Ensure that data package is available before running the example.
#  If it is not, see the `hurricaneexposure` package vignette for details
# on installing the required data package.
if (requireNamespace("hurricaneexposuredata", quietly = TRUE)) {


floyd_map <- map_distance_exposure(storm = "Floyd-1999", dist_limit = 75)
floyd_map

allison_map <- map_distance_exposure(storm = "Allison-2001",
                                     dist_limit = 75)
map_tracks("Allison-2001", plot_points = FALSE, plot_object = allison_map)
}
}

