% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/email_finder.R
\name{email_finder}
\alias{email_finder}
\title{Function to generate or retrieve the most likely email address from a domain name, a first name and a last name.}
\usage{
email_finder(domain, key, first_name = "", last_name = "", full_name = "")
}
\arguments{
\item{domain}{The domain you want to get the mails for}

\item{key}{Your hunter.io-API key}

\item{first_name}{The person's first name. It doesn't need to be in lowercase.}

\item{last_name}{The person's last name. It doesn't need to be in lowercase.}

\item{full_name}{The person's full name. Note that you'll get better results by supplying the person's first and last name if you can. It doesn't need to be in lowercase.
email_finder()}
}
\description{
This function allows you to generate or retrieve the most likely email address from a domain name, a first name and a last name.
}
\examples{
\dontrun{
email_finder("keyword-hero.com", key, first_name = "Daniel")
}
}
