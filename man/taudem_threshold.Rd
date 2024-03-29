% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/threshold.R
\name{taudem_threshold}
\alias{taudem_threshold}
\title{Stream Definition By Threshold}
\usage{
taudem_threshold(
  input_area_grid,
  output_stream_raster_grid = NULL,
  mask_file = NULL,
  threshold_parameter = 100,
  n_processes = getOption("traudem.n_processes", 1),
  quiet = getOption("traudem.quiet", FALSE)
)
}
\arguments{
\item{input_area_grid}{File name for grid to be thresholded.}

\item{output_stream_raster_grid}{File name for stream raster grid.}

\item{mask_file}{File name for grid used to mask the output stream raster, or general thresholded grid.}

\item{threshold_parameter}{Threshold parameter.}

\item{n_processes}{Number of processes for \code{mpiexec}. If \code{NULL} TauDEM is called without mpiexec.}

\item{quiet}{If \code{FALSE} output from TauDEM CLI is suppressed.}
}
\value{
Path to output file (invisibly).
}
\description{
Stream Definition By Threshold
}
\details{
See \url{https://hydrology.usu.edu/taudem/taudem5/help53/StreamDefinitionByThreshold.html}
}
\examples{
\dontshow{if (interactive() && traudem::can_register_taudem()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
test_dir <- withr::local_tempdir()
dir.create(test_dir)
file.copy(
   system.file("test-data", "DEM.tif", package = "traudem"),
   file.path(test_dir, "DEM.tif")
 )
filled_pit <- taudem_pitremove(file.path(test_dir, "DEM.tif"))
outputs <- taudem_d8flowdir(filled_pit)
outputs
contributing_area_grid <- taudem_aread8(outputs$output_d8flowdir_grid)
contributing_area_grid
thresholded <- taudem_threshold(contributing_area_grid)
thresholded
\dontshow{\}) # examplesIf}
}
