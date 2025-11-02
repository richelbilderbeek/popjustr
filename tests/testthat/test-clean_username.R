test_that("use", {
  expect_equal(
    clean_username(username = "Your Pretty Brains\n\t\t\t\t"),
    "Your Pretty Brains
  )
})
