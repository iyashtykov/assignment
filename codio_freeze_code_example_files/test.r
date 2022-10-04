# FREEZE CODE BEGIN

add <- function(x, y) {
  x + y
}

add(1, 2)
add(1.0, 2.0)
add(-1, -2)
add(-1.0, -2.0)
add(1.0e10, 2.0e10)
# FREEZE CODE END

#' Concatenate together two strings.
#' 
#' @param x A string.
#' @param y A string.
#' @return The concatenated string built of \code{x} and \code{y}.
#' @examples
#' strcat("one", "two")
strcat <- function(x, y) {
  paste(x, y)
}

paste("one", "two")
paste('one', 'two')
paste(NULL, NULL)
paste(NA, NA)

paste("multi-
      line",
      'multi-
      line')

