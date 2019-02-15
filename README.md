# README

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2562836.svg)](https://doi.org/10.5281/zenodo.2562836)

This repository stores all files required to reproduce a Research Article submitted to [Gates Open Research Platform](https://gatesopenresearch.org/). The article was written in [R Markdown](https://rmarkdown.rstudio.com/) and can be fully reproduced by cloning this repository and installing the required software listed under R Session info. The article was submitted as a DOCX file, as required be the research platform. The [final DOCX file](https://github.com/larnsce/chp-article/blob/master/manuscript/Research_Article_Biomass_Controls_Thermal_Treatment.docx) underwent minor manual modifications, which are not reproducible. 

## Data

A description of all data tables required to reproduce the article is storewd in `data/` directory and accessible from the [data tables metadata](data/chp_article_data_tables_metadata.md) file.

## R Session info

The article was produced with the following R Session info.

    ─ Session info ──────────────────────────────────────────────────────────────────────────────────────
     setting  value                       
     version  R version 3.5.1 (2018-07-02)
     os       macOS  10.14.2              
     system   x86_64, darwin15.6.0        
     ui       RStudio                     
     language (EN)                        
     collate  en_US.UTF-8                 
     ctype    en_US.UTF-8                 
     tz       Europe/Zurich               
     date     2019-02-12                  
    
    ─ Packages ──────────────────────────────────────────────────────────────────────────────────────────
     package     * version    date       lib source                           
     assertthat    0.2.0      2017-04-11 [1] CRAN (R 3.5.0)                   
     backports     1.1.3      2018-12-14 [1] CRAN (R 3.5.0)                   
     bindr         0.1.1      2018-03-13 [1] CRAN (R 3.5.0)                   
     bindrcpp    * 0.2.2      2018-03-29 [1] CRAN (R 3.5.0)                   
     bookdown      0.9        2018-12-21 [1] CRAN (R 3.5.0)                   
     broom         0.5.1      2018-12-05 [1] CRAN (R 3.5.0)                   
     cellranger    1.1.0      2016-07-27 [1] CRAN (R 3.5.0)                   
     checkpoint    0.4.5      2018-09-10 [1] CRAN (R 3.5.0)                   
     cli           1.0.1      2018-09-25 [1] CRAN (R 3.5.0)                   
     clipr         0.4.1      2018-06-23 [1] CRAN (R 3.5.0)                   
     colorspace    1.4-0      2019-01-13 [1] CRAN (R 3.5.2)                   
     crayon        1.3.4      2017-09-16 [1] CRAN (R 3.5.0)                   
     digest        0.6.18     2018-10-10 [1] CRAN (R 3.5.0)                   
     dplyr       * 0.7.8      2018-11-10 [1] CRAN (R 3.5.0)                   
     evaluate      0.12       2018-10-09 [1] CRAN (R 3.5.0)                   
     forcats     * 0.3.0      2018-02-19 [1] CRAN (R 3.5.0)                   
     generics      0.0.2      2018-11-29 [1] CRAN (R 3.5.0)                   
     ggplot2     * 3.1.0      2018-10-25 [1] CRAN (R 3.5.0)                   
     glue          1.3.0      2018-07-17 [1] CRAN (R 3.5.0)                   
     grateful      0.0.2      2019-02-11 [1] Github (Pakillo/grateful@5fc7464)
     gtable        0.2.0      2016-02-26 [1] CRAN (R 3.5.0)                   
     haven         2.0.0      2018-11-22 [1] CRAN (R 3.5.0)                   
     here          0.1        2017-05-28 [1] CRAN (R 3.5.0)                   
     highr         0.7        2018-06-09 [1] CRAN (R 3.5.0)                   
     hms           0.4.2      2018-03-10 [1] CRAN (R 3.5.0)                   
     htmltools     0.3.6      2017-04-28 [1] CRAN (R 3.5.0)                   
     htmlwidgets   1.3        2018-09-30 [1] CRAN (R 3.5.0)                   
     httr          1.4.0      2018-12-11 [1] CRAN (R 3.5.1)                   
     igraph        1.2.2      2018-07-27 [1] CRAN (R 3.5.0)                   
     jsonlite      1.6        2018-12-07 [1] CRAN (R 3.5.0)                   
     knitr         1.21       2018-12-10 [1] CRAN (R 3.5.1)                   
     lattice       0.20-35    2017-03-25 [1] CRAN (R 3.5.1)                   
     lazyeval      0.2.1      2017-10-29 [1] CRAN (R 3.5.0)                   
     lubridate     1.7.4      2018-04-11 [1] CRAN (R 3.5.0)                   
     magrittr      1.5        2014-11-22 [1] CRAN (R 3.5.0)                   
     modelr        0.1.2      2018-05-11 [1] CRAN (R 3.5.0)                   
     munsell       0.5.0      2018-06-12 [1] CRAN (R 3.5.0)                   
     networkD3   * 0.4        2017-03-18 [1] CRAN (R 3.5.0)                   
     nlme          3.1-137    2018-04-07 [1] CRAN (R 3.5.1)                   
     packrat       0.5.0      2018-11-14 [1] CRAN (R 3.5.0)                   
     pillar        1.3.1      2018-12-15 [1] CRAN (R 3.5.0)                   
     pkgconfig     2.0.2      2018-08-16 [1] CRAN (R 3.5.0)                   
     plyr          1.8.4      2016-06-08 [1] CRAN (R 3.5.0)                   
     purrr       * 0.3.0      2019-01-27 [1] CRAN (R 3.5.2)                   
     R6            2.3.0      2018-10-04 [1] CRAN (R 3.5.0)                   
     Rcpp          1.0.0      2018-11-07 [1] CRAN (R 3.5.0)                   
     readr       * 1.3.0      2018-12-11 [1] CRAN (R 3.5.1)                   
     readxl        1.1.0      2018-04-20 [1] CRAN (R 3.5.0)                   
     rlang         0.3.1.9000 2019-02-01 [1] Github (r-lib/rlang@7243c6d)     
     rmarkdown     1.11       2018-12-08 [1] CRAN (R 3.5.0)                   
     rprojroot     1.3-2      2018-01-03 [1] CRAN (R 3.5.0)                   
     rstudioapi    0.8        2018-10-02 [1] CRAN (R 3.5.0)                   
     rvest         0.3.2      2016-06-17 [1] CRAN (R 3.5.0)                   
     scales      * 1.0.0      2018-08-09 [1] CRAN (R 3.5.0)                   
     sessioninfo   1.1.1      2018-11-05 [1] CRAN (R 3.5.0)                   
     snakecase     0.9.2      2018-08-14 [1] CRAN (R 3.5.0)                   
     stringi       1.2.4      2018-07-20 [1] CRAN (R 3.5.0)                   
     stringr     * 1.4.0      2019-02-10 [1] CRAN (R 3.5.2)                   
     tibble      * 2.0.1      2019-01-12 [1] CRAN (R 3.5.2)                   
     tidyr       * 0.8.2      2018-10-28 [1] CRAN (R 3.5.0)                   
     tidyselect    0.2.5      2018-10-11 [1] CRAN (R 3.5.0)                   
     tidyverse   * 1.2.1      2017-11-14 [1] CRAN (R 3.5.0)                   
     withr         2.1.2      2018-03-15 [1] CRAN (R 3.5.0)                   
     xfun          0.4        2018-10-23 [1] CRAN (R 3.5.0)                   
     xml2          1.2.0      2018-01-24 [1] CRAN (R 3.5.0)                   
     yaml          2.2.0      2018-07-25 [1] CRAN (R 3.5.0)                   
    
    [1] /Library/Frameworks/R.framework/Versions/3.5/Resources/library

## Contributing

See the [CONTRIBUTING](CONTRIBUTING.md) file for how to contribute.

## License

This projects is licensed under [CCO 1.0 License](LICENSE.md). 