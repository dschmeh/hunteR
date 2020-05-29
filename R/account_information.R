#' Function enables you to get information regarding your Hunter account at any time. This call is free.

#'
#' This function allows you to get information regarding your Hunter account at any time. This call is free.
#' @param key 		One of the API keys associated with your account.
#' account_information()
#' @examples
#' \dontrun{
#' account_information(key)
#' }


account_information <-
  function(key) {


    out <- jsonlite::fromJSON(
      paste0(
        "https://api.hunter.io/v2/account?api_key=",
        key
        )
    )

    return(out)

  }
