library(tidyverse)
a <- data.frame(month = c("October", "November", "December", "January", "February"),
                season = c("Fall", "Fall", "Winter", "Winter", "Winter"),
                daylight_savings = c("yes", "partly", "no", "no", "no"))
b <- data.frame(month = c("October", "December", "February"),
                season = c("Fall", "Winter", "Winter"),
                daylight_savings = c("yes", "no", "no"))


c <- anti_join(a, b)

##~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ vector of animals  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~
animals <- c("blue tang", "red panda", "Blue jay",
             "green sea turtle", "blue morpho butterfly", 
             "Blue iguana", "Red squirrel")
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ initialize empty vector to store blue-colored animals  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
blue_animals <- c()
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  ~ sort blue animals into their own list  ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
for (i in 1:length(animals)){
  current_animal <- animals[i]
  if(isTRUE(str_detect(current_animal, "blue"))){
    message("The '", current_animal, "' is a blue animal")
    blue_animals <- current_animal
  }
}