## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----tables, message = FALSE, eval = FALSE-------------------------------
#  library(dplyr)
#  library(jsonlite)
#  
#  tables_url <- "https://api.tradestatistics.io/tables"
#  tables_raw_file <- "../data-raw/ots_tables.json"
#  tables_tidy_file <- "../data/ots_tables.rda"
#  
#  if (!file.exists(tables_raw_file)) { download.file(tables_url, tables_raw_file) }
#  
#  if (!file.exists(tables_tidy_file)) {
#    ots_tables <- fromJSON(tables_raw_file) %>%
#      as_tibble() %>%
#      mutate_if(is.character, function(x) { iconv(x, to = "ASCII//TRANSLIT")})
#    save(ots_tables, file = tables_tidy_file, compress = "xz")
#  }

## ----countries, message = FALSE, eval = FALSE----------------------------
#  countries_url <- "https://api.tradestatistics.io/countries"
#  countries_raw_file <- "../data-raw/ots_countries.json"
#  countries_tidy_file <- "../data/ots_countries.rda"
#  
#  if (!file.exists(countries_raw_file)) { download.file(countries_url, countries_raw_file) }
#  
#  if (!file.exists(countries_tidy_file)) {
#    ots_countries <- fromJSON(countries_raw_file) %>%
#      as_tibble() %>%
#      mutate_if(is.character, function(x) { iconv(x, to = "ASCII//TRANSLIT")})
#    save(ots_countries, file = countries_tidy_file, compress = "xz")
#  }

## ----products, message = FALSE, eval = FALSE-----------------------------
#  products_url <- "https://api.tradestatistics.io/products"
#  products_raw_file <- "../data-raw/ots_products.json"
#  products_tidy_file <- "../data/ots_products.rda"
#  
#  if (!file.exists(products_raw_file)) { download.file(products_url, products_raw_file) }
#  
#  if (!file.exists(products_tidy_file)) {
#    ots_products <- fromJSON(products_raw_file) %>%
#      as_tibble() %>%
#      mutate_if(is.character, function(x) { iconv(x, to = "ASCII//TRANSLIT")}) %>%
#      filter(nchar(product_code) %in% c(2,3,4))
#    save(ots_products, file = products_tidy_file, compress = "xz")
#  }

## ----communities, message = FALSE, eval = FALSE--------------------------
#  communities_url <- "https://api.tradestatistics.io/communities"
#  communities_raw_file <- "../data-raw/ots_communities.json"
#  communities_tidy_file <- "../data/ots_communities.rda"
#  
#  if (!file.exists(communities_raw_file)) { download.file(communities_url, communities_raw_file) }
#  
#  if (!file.exists(communities_tidy_file)) {
#    ots_communities <- fromJSON(communities_raw_file) %>%
#      as_tibble() %>%
#      mutate_if(is.character, function(x) { iconv(x, to = "ASCII//TRANSLIT")}) %>%
#      filter(nchar(product_code) == 4)
#    save(ots_communities, file = communities_tidy_file, compress = "xz")
#  }

## ----product_shortnames, message = FALSE, eval = FALSE-------------------
#  product_shortnames_url <- "https://api.tradestatistics.io/product_shortnames"
#  product_shortnames_raw_file <- "../data-raw/ots_product_shortnames.json"
#  product_shortnames_tidy_file <- "../data/ots_product_shortnames.rda"
#  
#  if (!file.exists(product_shortnames_raw_file)) { download.file(product_shortnames_url, product_shortnames_raw_file) }
#  
#  if (!file.exists(product_shortnames_tidy_file)) {
#    ots_product_shortnames <- fromJSON(product_shortnames_raw_file) %>%
#      as_tibble() %>%
#      mutate_if(is.character, function(x) { iconv(x, to = "ASCII//TRANSLIT")})
#    save(ots_product_shortnames, file = product_shortnames_tidy_file, compress = "xz")
#  }

## ----conversion_rates, message = FALSE, eval = FALSE---------------------
#  # Source
#  # https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG
#  # https://data.worldbank.org/indicator/NY.GDP.MKTP.KD
#  
#  inflation_url <- "https://raw.githubusercontent.com/tradestatistics/inflation-data/master/inflation-data.json"
#  inflation_raw_file <- "../data-raw/ots_inflation.json"
#  inflation_tidy_file <- "../data/ots_inflation.rda"
#  
#  if (!file.exists(inflation_raw_file)) { download.file(inflation_url, inflation_raw_file) }
#  
#  if (!file.exists(inflation_tidy_file)) {
#    ots_inflation <- fromJSON(inflation_url)
#    ots_inflation <- as_tibble(ots_inflation)
#    save(ots_inflation, file = inflation_tidy_file, compress = "xz")
#  }

