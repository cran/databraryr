# list_volume_tags ---------------------------------------------------------
test_that("list_volume_tags returns data.frame or is NULL", {
  expect_true((is.null(list_volume_tags()) ||
                 (class(list_volume_tags()) == "data.frame")))
})

test_that("list_volume_tags rejects bad input parameters", {
  expect_error(list_volume_tags(vol_id = "a"))
  expect_error(list_volume_tags(vol_id = c(1,2)))
  expect_error(list_volume_tags(vol_id = TRUE))
  expect_error(list_volume_tags(vol_id = list(a=1, b=2)))
  expect_error(list_volume_tags(vol_id = -1))
  
  expect_error(list_volume_tags(vb = -1))
  expect_error(list_volume_tags(vb = 3))
  expect_error(list_volume_tags(vb = "a"))
  expect_error(list_volume_tags(vb = list(a=1, b=2)))
})

test_that("list_volume_tags returns data.frame for volume with tags", {
  expect_true(class(list_volume_tags(vol_id = 1)) == "data.frame")
})

test_that("list_volume_tags returns NULL for volume without tags", {
  expect_true(is.null(list_volume_tags(vol_id = 3)))
})
