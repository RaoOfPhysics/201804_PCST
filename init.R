# Install packages from CRAN / MRAN

install.packages('here')
install.packages('revealjs')
install.packages('kableExtra')
install.packages('rcrossref')
install.packages('rio')
install.packages('tidytext')

# Packages that modify RStudio with addins

## From CRAN / MRAN
install.packages('citr') # Makes it easy to add citations from a bib(la)tex file

## From GitHub
devtools::install_github('ThinkR-open/remedy')
devtools::install_github('r-lib/styler')
devtools::install_github('benmarwick/wordcountaddin', type = 'source',
                         dependencies = TRUE)
devtools::install_github('ropenscilabs/gramr')
