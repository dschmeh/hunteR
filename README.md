# hunteR

[![Build Status](https://travis-ci.org/dschmeh/hunteR.svg?branch=master)](https://travis-ci.org/dschmeh/hunteR)

A simple R Package to retrieve information from hunter.io-API
# Installation 

To get the current development version from github:

```
# install.packages("devtools")
devtools::install_github("dschmeh/hunteR")
```

# Getting Data from the API

## Domain Search
Function to get every email address found on the internet using a given domain name, with sources.
```
domain <- "keyword-hero.com"
key <- {{YOUR-API-TOKEN}}
domain_search(domain, key)
```

## Email Finder
Function to generate or retrieve the most likely email address from a domain name, a first name and a last name.
```
domain <- "keyword-hero.com"
key <- {{YOUR-API-TOKEN}}
first_name<-"Daniel"
domain_search(domain, key, first_name)
```

## Email Verifier
Function to verify the deliverability of an email address.
```
domain <- "keyword-hero.com"
key <- {{YOUR-API-TOKEN}}
email_finder(domain, key)
```

## Email Count
 Function to get how many email addresses hunter.io have for one domain or for one company.
```
domain <- "keyword-hero.com"
email_count(domain)
```

## Account Information
Function enables you to get information regarding your Hunter account at any time. This call is free.
```
key <- {{YOUR-API-TOKEN}}
account_information(key)
```
