% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_containers_records.R
\name{list_containers_records}
\alias{list_containers_records}
\title{List Containers and Records In Databrary Volume.}
\usage{
list_containers_records(vol_id = 1, vb = FALSE)
}
\arguments{
\item{vol_id}{Databrary volume number.}

\item{vb}{A Boolean value. If TRUE provides verbose output.}
}
\value{
A list with containers and records from the specified volume.
}
\description{
List Containers and Records In Databrary Volume.
}
\examples{
\donttest{
list_containers_records() # Containers and records from volume 1.
#' }
}
