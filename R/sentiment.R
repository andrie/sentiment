#' Calculates sentiment score.
#'
#' Splits string into words (by default at space), looks up affinity score for each word and returns average.
#' 
#' @param x String
#' @param dict Dictionary to use: either "afinn111" or "afinn96"
#' @param sep Charater string to use as word boundary
#' @param removePunct If TRUE, removes punctuation from words
#' @param ... not used
#' @export sentiment sentiment.default
#' @aliases sentiment.default
#' @return A numerical value between -5 and +5. Returns \code{NaN} if none of the words are found in the dictionary.
#' @family sentiment functions
#' @examples 
#' sentiment(c("There is a terrible mistake in this work", "This is wonderful!"))
sentiment <- function(x, dict=c("afinn111", "afinn96"), sep=" ", removePunct=TRUE, ...){
  UseMethod("sentiment", x)
}

sentiment.default <- function(x, dict=c("afinn111", "afinn96"), sep=" ", removePunct=TRUE, ...){
  dict <- match.arg(dict)
  dict <- if(dict=="afinn111") afinn111 else afinn96
  w <- strsplit(x, split=" ")
  if(removePunct) w <- lapply(w, function(xx)gsub("[[:punct:]]", "", xx))
  vapply(w, 
      function(xx)mean(unname(dict[xx]), na.rm=TRUE),
      FUN.VALUE=1,
      USE.NAMES=FALSE
  )
}

#' Calculates sentiment score for twitter status object.
#'
#' Splits string into words (by default at space), looks up affinity score for each word and returns average
#' 
#' @param x Object of class \code{status}, originating in package \code{twitteR}.  See also \code{\link[twitteR]{searchTwitter}}
#' @param ... Passed to \code{\link{sentiment.default}}
#' @method sentiment status
#' @export
#' @family sentiment functions
#' @examples 
#' if(require(twitteR)){
#' tweets  <- searchTwitter("#mcdonalds", n=25)
#' sentiment(tweets[[1]])
#' sapply(tweets, sentiment)
#' }
sentiment.status <- function(x, ...){
  x <- x$text
  sentiment(x, ...)
}
