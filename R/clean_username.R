#' Clean a user name.
#'
#' In practice: keep everything until the first newline
#' @param username a complete username
#' @export
clean_username <- function(username) {
  if (stringr::str_detect(username, "\n") == FALSE) {
    return(username)
  }
  stringr::str_match(username, "^(.*)\n")[, 2]
}
