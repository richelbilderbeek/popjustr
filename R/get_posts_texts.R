#' Return the main texts of a posts in a website
#' @return the text of that post
get_posts_texts <- function(url) {
  # url <- "https://forum.popjustice.com/threads/bops-basically-2-73-1-she-serves-this-up-so-good-unhnhh-73-2-kind-of-banger-theyd-play-in-a-straight-club-derrogatory.76049/page-6" # nolint
  webpage <- rvest::read_html(url)
  body <- webpage |> rvest::html_node("body")
  content <- body |> rvest::html_element(".p-pageWrapper") |> rvest::html_element(".p-body") |> rvest::html_element(".p-body-inner") |> rvest::html_element(".p-body-main")  |> rvest::html_element(".p-body-content") |> rvest::html_element(".p-body-pageContent")
  articles <- content |> rvest::html_elements(".message")

  if (1 == 2) {
    post_ids <- articles |> rvest::html_elements(".u-anchorTarget") |> rvest::html_attr("id")
  }
  main_texts <- articles |> rvest::html_elements(".message-content") |> rvest::html_text(trim = TRUE)
  message_users <- articles |> rvest::html_elements(".message-user") |> rvest::html_text(trim = TRUE)



  t <- tibble::tibble(
    i = seq_along(main_texts),
    user = message_users,
    text = main_texts
  )
  t
}
