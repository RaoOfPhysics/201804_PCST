# PACKAGES ---------------------------------------------------------------------

library(rcrossref) # For getting journal data
library(rio) # For outputting data into format for analysis
#library(here) # For defining local paths from project directory

# /PACKAGES --------------------------------------------------------------------


# DATA IMPORT ------------------------------------------------------------------

## Science Communication (SCX): SAGE

if (file.exists(here("data", "scx_data.Rds"))) {
  print("scx_data.Rds exists.")
} else {
  scx <- cr_journals(issn = "1552-8545", works = T, limit = 1000)
  export(scx$data, here("data", "scx_data.Rds"))
}

## Public Understanding of Science (PUS): SAGE

if (file.exists(here("data", "pus_data.Rds"))) {
  print("pus_data.Rds exists.")
} else {
  pus <- cr_journals(issn = "1361-6609", works = T, limit = 1000)
  export(pus$data, here("data", "pus_data.Rds"))
}

## Nature: Springer Nature

if (file.exists(here("data", "nature_data.Rds"))) {
  print("nature_data.Rds exists.")
} else {
  nature <- cr_journals(issn = "1476-4687", works = T, limit = 1000)
  export(nature$data, here("data", "nature_data.Rds"))
}

## Science: AAAS

if (file.exists(here("data", "science_data.Rds"))) {
  print("science_data.Rds exists.")
} else {
  science <- cr_journals(issn = "1095-9203", works = T, limit = 1000)
  export(science$data, here("data", "science_data.Rds"))
}

# /DATA IMPORT -----------------------------------------------------------------
