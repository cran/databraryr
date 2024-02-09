## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

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

