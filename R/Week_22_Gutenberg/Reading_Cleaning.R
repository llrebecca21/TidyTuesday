# install.packages("tidytuesdayR")

# tuesdata <- tidytuesdayR::tt_load('2025-06-03')
## OR
tuesdata <- tidytuesdayR::tt_load(2025, week = 22)

gutenberg_authors <- tuesdata$gutenberg_authors
gutenberg_languages <- tuesdata$gutenberg_languages
gutenberg_metadata <- tuesdata$gutenberg_metadata
gutenberg_subjects <- tuesdata$gutenberg_subjects


# Cleaning the Data
# install.packages("gutenbergr")

library(gutenbergr)
library(dplyr)
gutenberg_metadata <- gutenbergr::gutenberg_metadata
gutenberg_authors <- gutenbergr::gutenberg_authors
gutenberg_languages <- gutenbergr::gutenberg_languages |>
  # Fix a typo in the current CRAN version of the package.
  dplyr::mutate(language = as.factor(language))
gutenberg_languages$lanuage <- NULL
gutenberg_subjects <- gutenbergr::gutenberg_subjects

