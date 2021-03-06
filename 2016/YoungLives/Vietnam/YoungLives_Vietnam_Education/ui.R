library(shiny)
library(highcharter)
library(htmltools)

shinyUI(fillPage(
  theme = "young-lives.css",
  navbarPage(
    "Young Lives: Vietnam",
    tabPanel(
      "Education Comparison",
      fluidPage(
        fluidRow(
          column(uiOutput("selected_category_UI"), width = 6),
          column(uiOutput("selected_measure_UI"), width = 6)
        ),
        highchartOutput("comparison_chart")
      )
    ),
    tabPanel("About",
             includeMarkdown(knitr::knit("App_Description.Rmd"))),
    collapsible = TRUE
  )
))