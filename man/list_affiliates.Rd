% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_affiliates.R
\name{list_affiliates}
\alias{list_affiliates}
\title{List Affiliates for A Databrary Volume.}
\usage{
list_affiliates(party_id = 6, report_target_party = FALSE, vb = FALSE)
}
\arguments{
\item{party_id}{Target volume number.}

\item{report_target_party}{Report data about the target party. Default is FALSE.}

\item{vb}{A Boolean value. If TRUE provides verbose output.}
}
\value{
A data frame with information about a party's affiliates (sponsored
investigators).
}
\description{
List Affiliates for A Databrary Volume.
}
\examples{
\donttest{
list_affiliates() # Lists Rick Gilmore's affiliates
#' }
}
