context("requests")

test_that("geocode_cadastral returns coordinates from cadastral reference.", {
  result <- geocode_cadastral("0636105UF3403N", parse_files = FALSE)
  
  expect_match(result, "[0-9]*.[0-9]*,[0-9]*.[0-9]*")
})


test_that("to_number returns integer from string.", {
  result <- to_number("mil doscientos treinta y cuatro")

  expect_type(result, "integer")
})


test_that("to_number returns a correct translation from string.", {
  result <- to_number("mil doscientos treinta y cuatro")
  target <- 1234
  expect_equivalent(result, target)
})

