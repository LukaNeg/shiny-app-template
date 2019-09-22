#########################################
#### This is a Shiny web application ####
#########################################
#### To customize colors:
#### https://community.rstudio.com/t/shinydashboard-custom-box-colors-to-match-brand/14147
#### https://stackoverflow.com/questions/31711307/how-to-change-color-in-shiny-dashboard
#### HTML Tagds:
#### https://shiny.rstudio.com/articles/tag-glossary.html

library(shiny)
library(shinyWidgets)
library(shinydashboard)
source("00_code_functions.R")
source("01_dataclean.R")

### Load data from the data folder:
version_lab = "v0.0.1"

# Define UI for application
ui <- dashboardPage(
  dashboardHeader(title="Hello World"),
  dashboardSidebar(width = 280,
     sidebarMenu(
       menuItem("Page 1", tabName = "page1", icon = icon("list-alt")),
       menuItem("Page 2", tabName = "page2", icon = icon("chart-bar"))
     )
    ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "page1",
                fluidRow(
                  column(width = 12
                    # insert content here
                  )
                )
              ),
      tabItem(tabName = "page2",
              fluidRow(
                column(width = 12
                   # insert content here
                )
              )
      )
    )
  ),
  tags$head(tags$style(HTML('
      /* logo */
      .skin-blue .main-header .logo {
      background-color: #354AA0;
      }
      
      /* logo when hovered */
      .skin-blue .main-header .logo:hover {
      background-color: #354AA0;
      }
      
      /* navbar (rest of the header) */
      .skin-blue .main-header .navbar {
      background-color: #354AA0;
      }        
      '
  )))
)


# Define the 'brain' of the application
server <- function(input, output, session) {
   # insert server code here
}


# Run the application 
shinyApp(ui = ui, server = server)

