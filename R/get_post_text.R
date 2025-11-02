#' Get the text of a post
#' @return the text of that post
get_post_text <- function() {
  url <- "https://forum.popjustice.com/threads/bops-basically-2-73-1-she-serves-this-up-so-good-unhnhh-73-2-kind-of-banger-theyd-play-in-a-straight-club-derrogatory.76049/page-6" # nolint
  webpage <- rvest::read_html(url)
  body <- webpage |> rvest::html_node("body")
  content <- body |> rvest::html_element(".p-pageWrapper") |> rvest::html_element(".p-body") |> rvest::html_element(".p-body-inner") |> rvest::html_element(".p-body-main")  |> rvest::html_element(".p-body-content") |> rvest::html_element(".p-body-pageContent")
  articles <- content |> rvest::html_elements(".message")
  main_texts <- articles |> rvest::html_elements(".message-content") |> rvest::html_text(trim = TRUE)
  main_texts

}
