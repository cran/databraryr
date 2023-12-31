# get_party_as_df ---------------------------------------------------------
test_that("get_party_as_df returns a data frame", {
  expect_true("data.frame" %in% class(get_party_as_df()))
})

test_that("get_party_as_df rejects bad input parameters", {
  expect_error(get_party_as_df(party_id = "a"))
  expect_error(get_party_as_df(party_id = -1))
  #expect_error(get_party_as_df(party_id = c(2,3)))
  expect_error(get_party_as_df(party_id = TRUE))

  expect_error(get_party_as_df(convert_JSON = "a"))
  expect_error(get_party_as_df(convert_JSON = -1))
  expect_error(get_party_as_df(convert_JSON = c(2,3)))
  
  expect_error(get_party_as_df(vb = "a"))
  expect_error(get_party_as_df(vb = -1))
  expect_error(get_party_as_df(vb = c(2,3)))
})
