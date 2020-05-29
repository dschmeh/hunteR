#' Function to get every email address found on the internet using a given domain name, with sources.
#'
#' This function allows you to get the email adress found on the web for a given domain you enter.
#' @param domain The domain you want to get the mails for
#' @param key Your hunter.io-API key
#' @param limit 	Specifies the max number of email addresses to return. The default is 10.
#' @param offset Specifies the number of email addresses to skip. The default is 0.
#' @param type Get only personal or generic email addresses.
#' @param seniority 	Get only email addresses for people with the selected seniority level. The possible values are junior, senior or executive. Several seniority levels can be selected (delimited by a comma).
#' @param department Get only email addresses for people working in the selected department(s). The possible values are executive, it, finance, management, sales, legal, support, hr, marketing or communication. Several departments can be selected (comma-delimited).
#' domain_search()
#' @examples
#' \dontrun{
#' domain_search("keyword-hero.com", key)
#' }


domain_search <-
  function(domain,
           key,
           limit = "",
           offset = "",
           type = "",
           seniority = "",
           department = "") {
    #detecting problematic Inputs
    if (limit != "") {
      if (class(limit) != "numeric") {
        stop("limit must be a numerical input")
      }
    }

    if (offset != "") {
      if (class(offset) != "numeric") {
        stop("offset must be a numerical input")
      }
    }

    if (type != "") {
      if (type != "personal" || type != "generic") {
        stop("Input for type can just be personal or generic")
      }
    }

    out <- jsonlite::fromJSON(
      paste0(
        "https://api.hunter.io/v2/domain-search?domain=",
        domain,
        "&api_key=",
        key,
        if (limit != "") {
          paste0("&limit=", limit)
        },
        if (offset != "") {
          paste0("&offset=", offset)
        },
        if (type != "") {
          paste0("&type=", type)
        },
        if (seniority != "") {
          paste0("&seniority=", seniority)
        },
        if (department != "") {
          paste0("&department=", department)
        }
      )
    )

    return(out)

  }
