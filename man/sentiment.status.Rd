\name{sentiment.status}
\alias{sentiment.status}
\title{Calculates sentiment score for twitter status object.}
\usage{
  \method{sentiment}{status} (x, ...)
}
\arguments{
  \item{x}{Object of class \code{status}, originating in
  package \code{twitteR}.  See also
  \code{\link[twitteR]{searchTwitter}}}

  \item{...}{Passed to \code{\link{sentiment.default}}}
}
\description{
  Splits string into words (by default at space), looks up
  affinity score for each word and returns average
}
\examples{
if(require(twitteR)){
tweets  <- searchTwitter("#mcdonalds", n=25)
sentiment(tweets[[1]])
sapply(tweets, sentiment)
}
}
\seealso{
  Other sentiment.functions: \code{\link{sentiment}}
}

