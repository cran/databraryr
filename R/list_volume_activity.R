#' List Activity In A Databrary Volume
#'
#' If a user has access to a volume, this command lists the modification
#' history of the volume.
#'
#' @param vol_id Selected volume number.
#' @param vb A Boolean value. If TRUE provides verbose output.
#' @returns A list with the activity history on a volume.
#' @examples
#' \donttest{
#' \dontrun{
#' # The following will only return output if the user has write privileges
#' # on the volume.
#' 
#' list_volume_activity(vol_id = 1) # Activity on volume 1.
#' }
#' }
#' @export
list_volume_activity <- function(vol_id = 1, vb = FALSE) {
  # Check parameters
  assertthat::assert_that(length(vol_id) == 1)
  assertthat::assert_that(is.numeric(vol_id))
  assertthat::assert_that(vol_id > 0)
  
  assertthat::assert_that(length(vb) == 1)
  assertthat::assert_that(is.logical(vb))
  if (vb)
    message('list_volume_activity()...')
  
  r <-
    GET_db_contents(URL_components = paste0('/api/volume/', vol_id,
                                            '/activity'),
                    vb = vb)
  if (is.null(r)) {
    if (vb)
      message("Activity history restricted to volume owners.")
  }
  r
}
