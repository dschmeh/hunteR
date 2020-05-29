#' Function to get how many email addresses hunter.io have for one domain or for one company.

#'
#' This function allows you to know how many email addresses we have for one domain or for one company. It's free and doesn't require authentication.
#' @param domain 	The domain name for which you want to know how many email addresses we have.
#' @param type Get the count of only personal or generic email addresses.
#' email_count()
#'
email_count <-
  function(domain,
           type = "") {

    if (type != "") {
      if (type != "personal" || type != "generic") {
        stop("Input for type can just be personal or generic")
      }
    }

    out <- jsonlite::fromJSON(
      paste0(
        "https://api.hunter.io/v2/email-count?domain=",
        domain,
        if (type != "") {
          paste0("&type=", type)
        }

      )
    )

    return(out)

  }
