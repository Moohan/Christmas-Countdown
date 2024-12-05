# Christmas Countdown

A quick and simple Shiny app to countdown to Christmas as part of the LIST 12 days of coding 2024 challenge.

It uses [`{lubridate}`](https://lubridate.tidyverse.org/) for the time calculations and the time difference (period) printing.

It uses [`shiny::invalidateLater`](https://shiny.posit.co/r/reference/shiny/0.14/invalidatelater.html) to force a refresh 10 times a second.

[**See it live on Shinyapps.io**](https://jamesmcmahon.shinyapps.io/Christmas_countdown/){.uri}
