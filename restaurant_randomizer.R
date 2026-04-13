#' Restaurant Sampler
#'
#' @description
#' A function used to randomize and pick out restaurants
#'
#' @param None No Input
#'
#' @returns selected restaurant
#'
#' @details
#' This function does not require a parameter as the restaurant it picks is hard
#' coded into it. The output it delivers gives a random restaurant.
#

restaurant_randomizer &lt;- function() {
  # Name
  restaurants &lt;- c(
    "Big Bowl Noodle House", "Bistrozine", "Cafe Alina", 
    "Carters Table", "El Jefes Taqueria", "Hibachi Express", 
    "India Pavilioon", "Kokoro", "Mezeh", "Pimanti Bros.", 
    "Roots Natural Kitchen", "Sowers Harvest Cafe", 
    "The Waffle Shop", "Subway", "Mosul Grill", 
    "Sip and Slurp", "Penn State Halal Guys", "Bubbas", 
    "Tokyo Sushi and Hibachi", "Kokoro", "Dunkin", 
    "Uncle Chens", "D.P. Dough", "Buffalo Wild Wings", 
    "Tropical Smoothie Cafe", "Chipotle Mexican Grill", 
    "Osaka", "Beijing Restaurant", "Playa Bowls"
  )
  #restaurants used
  sample(restaurants, 1)
  #sample function used to randomize
}