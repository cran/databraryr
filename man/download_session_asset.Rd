% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_session_asset.R
\name{download_session_asset}
\alias{download_session_asset}
\title{Download Asset From Databrary.}
\usage{
download_session_asset(
  asset_id = 1,
  session_id = 9807,
  file_name = NULL,
  target_dir = tempdir(),
  timeout_secs = REQUEST_TIMEOUT,
  vb = options::opt("vb"),
  rq = NULL
)
}
\arguments{
\item{asset_id}{An integer. Asset id for target file. Default is 1.}

\item{session_id}{An integer. Slot/session number where target file is
stored. Default is 9807.}

\item{file_name}{A character string. Name for downloaded file. Default is NULL.}

\item{target_dir}{A character string. Directory to save the downloaded file.
Default is a temporary directory given by a call to \code{tempdir()}.}

\item{timeout_secs}{An integer constant. The default value, defined in
CONSTANTS.R is REQUEST_TIMEOUT. This value determines the default timeout
value for the httr2 request object. When downloading large files, it can be
useful to set this value to a large number.}

\item{vb}{Show verbose messages. (Defaults to \code{FALSE}, overwritable using option 'databraryr.vb' or environment variable 'R_DATABRARYR_VB')}

\item{rq}{A list in the form of an \code{httr2} request object. Default is NULL.}
}
\value{
Full file name to the asset or NULL.
}
\description{
Databrary stores file types (assets) of many types. This
function downloads an asset based on its system-unique integer identifer
(asset_id) and system-unique session (slot) identifier (session_id).
}
\examples{
\donttest{
\dontrun{
download_session_asset() # Download's 'numbers' file from volume 1.
download_session_asset(asset_id = 11643, session_id = 9825, file_name = "rdk.mp4")
# Downloads a display with a random dot kinematogram (RDK).
}
}
}
