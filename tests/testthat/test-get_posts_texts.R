test_that("use", {
  url <- "https://forum.popjustice.com/threads/bops-basically-2-73-1-she-serves-this-up-so-good-unhnhh-73-2-kind-of-banger-theyd-play-in-a-straight-club-derrogatory.76049/page-6" # nolint
  expect_equal(20, length(get_posts_texts(url)))
})
