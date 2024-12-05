library(shiny)
library(lubridate)

ui <- fluidPage(
  titlePanel("Countdown to Christmas"),
  mainPanel(
    textOutput("countdown")
  )
)

server <- function(input, output, session) {
  output$countdown <- renderText({
    invalidateLater(100, session)
    
    current_time <- Sys.time()
    christmas <- dmy_hms("25th December 2024 00:00:00")
    
    time_diff <- interval(current_time, christmas)
    
    return(as.character(as.period(time_diff)))
  })
}

shinyApp(ui = ui, server = server)
