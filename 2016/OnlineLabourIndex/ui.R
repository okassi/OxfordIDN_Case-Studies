## =============================== License ========================================
## ================================================================================
## This work is distributed under the MIT license, included in the parent directory
## Copyright Owner: University of Oxford
## Date of Authorship: 2016
## Author: Martin John Hadley (orcid.org/0000-0002-3039-6849)
## Academic Contact: otto.kassi@oii.ox.ac.uk
## Data Source: local file
## ================================================================================


library(shiny)
library(highcharter)
library(plotly)
library(dygraphs)
library(htmltools)

shinyServer(fluidPage(
  wellPanel(
    includeMarkdown(knitr::knit("App_Description.Rmd")),
    uiOutput("selected_occupation_UI")
  ),
  dygraphOutput("dygraph")
))