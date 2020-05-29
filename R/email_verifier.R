#' Function to verify the deliverability of an email address.
#'
#' This function allows you to verify the deliverability of an email address.
#' @param email 	The email address you want to verify.
#' @param key Your hunter.io-API key
#' email_verifier()
#' @examples
#' \dontrun{
#' email_verifier("danielatkeyword-hero.com", key)
#' }


email_verifier <-
  function(email,
           key) {

    out <- jsonlite::fromJSON(
      paste0(
        "https://api.hunter.io/v2/email-verifier?email=",
        email,
        "&api_key=",
        key
      )
    )

    return(out)

  }
