# “Relevance-distance”: my talk for PCST 2018

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/RaoOfPhysics/201804_PCST/master?urlpath=rstudio)

[![Achintya's PhD repos](https://img.shields.io/badge/collection-Achintya's%20PhD%20repos-yellowgreen.svg)](https://github.com/RaoOfPhysics/phd)

Presentation prepared for my talk at [PCST 2018](http://www.pcst2018.org/pcst18), discussing some of the results from my PhD research.
The presentation itself, which is viewable on a mobile browser as well, can be found at [https://raoofphysics.github.io/201804_PCST](https://raoofphysics.github.io/201804_PCST).

If you use hypothes.is, please annotate the presentation! I will be grateful for any notes you leave.

## Frontmatter

- **Full title**: Relevance-distance as a model for evaluating the engagement potential for different fields of scientific research
- **Category**: Show, tell and talk
- **Area of interest**: Comparing science communication across cultures
- **Co-authors**:
  - Achintya Rao, UWE Bristol + CERN
  - Dr Emma Weitkamp, UWE Bristol
  - Dr Clare Wilkinson, UWE Bristol
  - Dr Erik Stengler, UWE Bristol
  - Dr Christine Sutton, CERN

## Abstract

> In the extensive study of the relationship between science and society, academia has often addressed fields of research that have the potential for having a direct or an immediate impact on day-to-day human life. Such a narrow perspective, despite the diversity of fields studied, has resulted in an orthodoxy within some science-communication discourse that sees two-way engagement as an ideal that must be upheld by all.
>
> In this paper, we argue that fields of research that are farther away from affecting daily human life (areas of fundamental research or the so-called “basic sciences”) are not necessarily in a similar position vis-à-vis their relationship with wider society as fields such as climate science or biomedicine. We construct a concept known as “relevance-distance”, noting that most academic research into public engagement draws upon examples from fields that have a “Proximal” relevance to everyday human life. We explore, through empirical data collection, how particle physicists at CERN conceptualise their relationship with the so-called “outside world”.
>
> We further explore whether these scientists find their own research influenced through public engagement (the outcomes of two-way engagement) and whether they consider it possible for members of wider society (non-specialists) to participate in particle-physics research. We find that the community perceives a large distance between itself and the public. Our findings indicate that particle physicists largely feel that the public is not able to contribute to scientific research, and that they do not particularly benefit (scientifically) from engagement with the public.

---

## Build information

This presentation is put together using:

- [R](https://www.r-project.org/), using [RStudio](https://www.rstudio.com/)
- [ggplot2](https://ggplot2.tidyverse.org/) and other [tidyverse](https://www.tidyverse.org/) packages for the data analysis and bar plots
- the [likert](https://cran.r-project.org/package=likert) package for the Likert plots
- [tidytext](https://cran.r-project.org/package=tidytext) for the text analysis
- [knitr](https://cran.r-project.org/web/packages/knitr/index.html) (available within RStudio) + [reveal.js](http://lab.hakim.se/reveal-js/) for the presentation itself
- [hypothes.is](https://hypothes.is/), which provides the annotation layer on top of the presentation
- the [rocker/verse](https://hub.docker.com/r/rocker/verse/) image for using RStudio via [Docker](https://www.docker.com/)
- [Binder](https://mybinder.org/) for the online version of RStudio to work with the raw files that made the presentation

knitr takes the `index.Rmd` (R Markdown) file and through some wizardry produces a standalone `index.html` file that serves as the presentation.

### Instructions for working with the raw files

1. Using Binder -- simplest solution

    Click on the "launch binder" button at the top to open RStudio in your browser and interact with the raw files.
    Start with `index.Rmd`.

1. Using Docker -- intermediate solution

    Clone this repo onto your computer and use [Docker Compose](https://docs.docker.com/compose/) (`docker-compose up -d`) to spin up a container with all the relevant files.
    Launch your browser and go to `localhost:8787`, where you will find a locally-running instance of RStudio Server.
    Enter `rstudio` as the username and password and interact with the raw files.

1. Use your own RStudio install -- most complex solution

    Clone the repo onto your computer and click on the `201804_PCST.Rproj` file to launch RStudio with the project loaded into it.
    This is the most complex only because I cannot guarantee that the scripts will work with versions of R and the R packages available after 28 February 2018.
    You will also have to install the appropriate packages if they are missing.

## Licence

- <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a> The content of the talk itself is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA).
- The code is not creative enough to merit a copyright statement and should be considered to be part of the public domain, since it builds upon the openly available work of several others.
- The images available under the `images/` directory are &copy; CERN and are used here under the terms of the CERN licensing conditions (for information/education purposes).

## Acknowledgements

This presentation is part of [my PhD research](http://achintyarao.in/phd), which is supported by the [CMS Collaboration](https://cms.cern) at [CERN](http://home.cern), partly under the [CERN Doctoral Student Programme](https://careers.cern/join-us/doctoral-student-programme).
I am grateful to the CMS Collaboration for enabling me to attend the conference and present my research.

I would like to thank my supervisors for guiding me on this project:

- [Dr Emma Weitkamp](http://www1.uwe.ac.uk/research/sciencecommunicationunit/scumembers/academicstaff/dremmaweitkamp.aspx) (UWE), Director of Studies
- [Dr Clare Wilkinson](http://www1.uwe.ac.uk/research/sciencecommunicationunit/staffandstudents/drclarewilkinson.aspx) (UWE)
- [Dr Erik Stengler](http://www1.uwe.ac.uk/research/sciencecommunicationunit/staffandstudents/drerikstengler.aspx) (UWE)
- [Dr Christine Sutton](https://en.wikipedia.org/wiki/Christine_Sutton) (CERN)

I would also like to thank Richard Smith-Unna ([@blahah](https://github.com/blahah)) for his invaluable help with R, Tibor Simko ([@tiborsimko](https://github.com/tiborsimko)) and Jacopo Notarstefano ([@jacquerie](https://github.com/jacquerie)) for their suggestions concerning Docker, and Amanda Alvarez ([@neuroamanda](https://github.com/neuroamanda)) for her support and advice during my PhD studies.
