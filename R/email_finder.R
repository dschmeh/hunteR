#' Function to generate or retrieve the most likely email address from a domain name, a first name and a last name.
#'
#' This function allows you to generate or retrieve the most likely email address from a domain name, a first name and a last name.
#' @param domain The domain you want to get the mails for
#' @param key Your hunter.io-API key
#' @param first_name The person's first name. It doesn't need to be in lowercase.
#' @param last_name The person's last name. It doesn't need to be in lowercase.
#' @param full_name The person's full name. Note that you'll get better results by supplying the person's first and last name if you can. It doesn't need to be in lowercase.
#' email_finder()
#' @examples
#' \dontrun{
#' email_finder("keyword-hero.com", key, first_name = "Daniel")
#' }


email_finder <-
  function(domain,
           key,
           first_name = "",
           last_name = "",
           full_name = "") {
    #detecting problematic Inputs
    if (first_name == "" && last_name == "" && full_name == "") {
        stop("You must specify one of the following: first_name, last_name or full_name")
    }

    out <- jsonlite::fromJSON(
      paste0(
        "https://api.hunter.io/v2/email-finder?domain=",
        domain,
        "&api_key=",
        key,
        if (first_name != "") {
          paste0("&first_name=", first_name)
        },
        if (last_name != "") {
          paste0("&last_name=", last_name)
        },
        if (full_name != "") {
          paste0("&full_name=", full_name)
        }
      )
    )

    return(out)

  }
