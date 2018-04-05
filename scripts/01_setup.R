# This script is called when the presentation in index.Rmd is knitted

# PACKAGES ---------------------------------------------------------------------

library(tidyverse) # For data analysis: see http://r4ds.had.co.nz
library(tidytext) # For text analysis: see https://www.tidytextmining.com/
library(ggrepel) # For plot labels to stand out
#library(rio) # Already called in 00_journal_data.R
#library(here) # Already called in 00_journal_data.R

# /PACKAGES --------------------------------------------------------------------


# DATA MUNGING -----------------------------------------------------------------

## Science Communication (SCX): SAGE

# Import data dump into tibble for analysis
# Select only four variables: `select`
# Remove entries with book reviews: `filter`
# Convert three variables to proper types: `mutate_at`

scx_data <- import(here("data", "scx_data.Rds")) %>%
  select("DOI", "container.title", "reference.count", "title") %>%
  filter(!str_detect(title, "Book ")) %>%
  filter(!str_detect(title, "Recent Books")) %>%
  filter(!str_detect(title, "Review: ")) %>%
  filter(!str_detect(title, "York Times ")) %>%
  filter(!str_detect(title, "pp ")) %>%
  filter(!str_detect(title, "978")) %>%
  filter(!str_detect(title, "prometheus")) %>%
  filter(!str_detect(title, "Amherst NY")) %>%
  mutate_at(vars(starts_with("DOI")), funs(factor)) %>%
  mutate_at(vars(starts_with("container")), funs(factor)) %>%
  mutate_at(vars(starts_with("reference")), funs(as.numeric))

## Public Understanding of Science (PUS): SAGE

# Import PUS data dump into tibble for analysis
# Select only four variables: `select`
# Remove entries with book reviews: `filter`
# Convert three variables to proper types: `mutate_at`

pus_data <- import(here("data", "pus_data.Rds")) %>%
  select("DOI", "container.title", "reference.count", "title") %>%
  filter(!str_detect(title, "Book ")) %>%
  filter(!str_detect(title, "pp ")) %>%
  filter(!str_detect(title, "978")) %>%
  mutate_at(vars(starts_with("DOI")), funs(factor)) %>%
  mutate_at(vars(starts_with("container")), funs(factor)) %>%
  mutate_at(vars(starts_with("reference")), funs(as.numeric))

## Nature: Springer Nature

# Import Nature data dump into tibble for analysis
# Select only four variables: `select`
# Remove entries with certain characteristics: `filter`
# Convert three variables to proper types: `mutate_at`

nature_data <- import(here("data", "nature_data.Rds")) %>%
  select("DOI", "container.title", "reference.count", "title") %>%
  filter(!str_detect(title, "100 ")) %>%
  filter(!str_detect(title, "A road ")) %>%
  filter(!str_detect(title, "Book ")) %>%
  filter(!str_detect(title, "Correction")) %>%
  filter(!str_detect(title, "Errat")) %>%
  filter(!str_detect(title, "New in paperback")) %>%
  filter(!str_detect(title, "Book ")) %>%
  filter(!str_detect(title, "news and ")) %>%
  filter(!str_detect(title, "News and ")) %>%
  filter(!str_detect(title, "news in ")) %>%
  filter(!str_detect(title, "News in ")) %>%
  filter(!str_detect(title, "The dog did nothing in the night-time")) %>%
  filter(!str_detect(title, "Writing")) %>%
  mutate_at(vars(starts_with("DOI")), funs(factor)) %>%
  mutate_at(vars(starts_with("container")), funs(factor)) %>%
  mutate_at(vars(starts_with("reference")), funs(as.numeric))

## Science: AAAS

# Import Science data dump into tibble for analysis
# Select only four variables: `select`
# Remove entries with certain characteristics: `filter`
# Convert three variables to proper types: `mutate_at`

science_data <- import(here("data", "science_data.Rds")) %>%
  select("DOI", "container.title", "reference.count", "title") %>%
  filter(!str_detect(title, "New Products ")) %>%
  filter(!str_detect(title, "News at ")) %>%
  filter(!str_detect(title, "Sponsored ")) %>%
  filter(!str_detect(title, "Webinar ")) %>%
  mutate_at(vars(starts_with("DOI")), funs(factor)) %>%
  mutate_at(vars(starts_with("container")), funs(factor)) %>%
  mutate_at(vars(starts_with("reference")), funs(as.numeric))

## Import Achintya's quantitative data

quant_data <- import(here("data", "201804PCST_quant_data.csv"),
                     stringsAsFactors = TRUE)

# /DATA MUNGING ----------------------------------------------------------------


# FOR TIDYTEXT ANALYSIS ---------------------------------------------

data("stop_words") # Stop Words to remove from titles

## Single words to highlight

highlight_word <- c("climate", "risk", "biotechnology", "genetic",
                    "environmental", "technology", "health")

## "Bigrams" to highlight
highlight_bigram <- c("climate change", "genetically modified",
                      "global warming", "synthetic biology",
                      "risk communication", "risk perceptions",
                      "nuclear power", "world wide", "wide web",
                      "stem cell", "scientific controversies",
                      "human genome", "genetic engineering",
                      "climate science", "citizen science",
                      "cell research", "health care",
                      "enginering indicators", "biotechnology policy",
                      "agricultural biotechnology")

# /FOR TIDYTEXT ANALYSIS --------------------------------------------
