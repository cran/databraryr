## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(databraryr)

## ----eval=FALSE---------------------------------------------------------------
#  library(databraryr)

## ----list-people-default------------------------------------------------------
databraryr::list_people()

## ----list-people-1-25---------------------------------------------------------
databraryr::list_people(people_list = 1:25)

## ----get-db-stats-------------------------------------------------------------
databraryr::get_db_stats("stats")
databraryr::get_db_stats("people")
databraryr::get_db_stats("institutions")
databraryr::get_db_stats("datasets")

## ----login, eval=FALSE--------------------------------------------------------
#  databraryr::login_db(email = "<YOUR_EMAIL@PROVIDER.COM>")

## ----login-w-env-var, eval=FALSE----------------------------------------------
#  databraryr::login_db(email = Sys.getenv("DATABRARY_LOGIN"))

## ---- eval=FALSE--------------------------------------------------------------
#  databraryr::login_db(email = "<YOUR_EMAIL@PROVIDER.COM>", store = TRUE,
#                       overwrite = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  databraryr::login_db(email = "<YOUR_EMAIL@PROVIDER.COM>")

## ---- eval=FALSE--------------------------------------------------------------
#  databraryr::login_db(email = Sys.getenv("DATABRARY_LOGIN"))

## ----eval=FALSE---------------------------------------------------------------
#  databraryr::logout_db()

## ---- eval=FALSE--------------------------------------------------------------
#  download_video()

## ---- eval=FALSE--------------------------------------------------------------
#  nums_vid <- download_video()
#  system(paste0("open ", nums_vid))

## -----------------------------------------------------------------------------
vol1_df <- list_assets_in_volume()

## -----------------------------------------------------------------------------
names(vol1_df)

## -----------------------------------------------------------------------------
unique(vol1_df$asset_type)

## -----------------------------------------------------------------------------
stats::xtabs(~ asset_type, data = vol1_df)

## -----------------------------------------------------------------------------
vol1_df |>
  dplyr::filter(asset_type == "MPEG-4 video") |>
  dplyr::select(name, duration) |>
  dplyr::mutate(hrs = duration/(60*60*1000)) |>
  dplyr::select(name, hrs) |>
  dplyr::arrange(desc(hrs)) |>
  head() |>
  knitr::kable(format = 'html')

## -----------------------------------------------------------------------------
list_volume_owners()

## -----------------------------------------------------------------------------
purrr::map(1:15, list_volume_owners) |> 
  purrr::list_rbind()

## -----------------------------------------------------------------------------
list_volume_metadata()

## -----------------------------------------------------------------------------
purrr::map(c(1:50), list_volume_metadata) |>
  purrr::list_rbind()

## -----------------------------------------------------------------------------
db_constants <- assign_constants()
db_constants$permission

## -----------------------------------------------------------------------------
list_volume_funding()

## -----------------------------------------------------------------------------
purrr::map(c(1:20), list_volume_funding) |>
  purrr::list_rbind()

## -----------------------------------------------------------------------------
list_volume_links()

