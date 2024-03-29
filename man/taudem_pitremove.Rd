% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pitremove.R
\name{taudem_pitremove}
\alias{taudem_pitremove}
\title{Pit Remove}
\usage{
taudem_pitremove(
  input_elevation_grid,
  output_elevation_grid = NULL,
  only_4way_neighbors = FALSE,
  n_processes = getOption("traudem.n_processes", 1),
  depmask = NULL,
  quiet = getOption("traudem.quiet", FALSE)
)
}
\arguments{
\item{input_elevation_grid}{Input elevation grid file.}

\item{output_elevation_grid}{Output elevation grid file.}

\item{only_4way_neighbors}{Whether to consider only 4 way neighbors.}

\item{n_processes}{Number of processes for \code{mpiexec}. If \code{NULL} TauDEM is called without mpiexec.}

\item{depmask}{Depression mask file (optional).}

\item{quiet}{If \code{FALSE} output from TauDEM CLI is suppressed.}
}
\value{
Path to output file (invisibly).
}
\description{
Pit Remove
}
\details{
See \url{https://hydrology.usu.edu/taudem/taudem5/help53/PitRemove.html}
}
\examples{
\dontshow{if (interactive() && traudem::can_register_taudem()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
test_dir <- withr::local_tempdir()
dir.create(test_dir)
 file.copy(
   system.file("test-data", "DEM.tif", package = "traudem"),
   file.path(test_dir, "DEM.tif")
 )
output <- taudem_pitremove(file.path(test_dir, "DEM.tif"))
output
\dontshow{\}) # examplesIf}
}
