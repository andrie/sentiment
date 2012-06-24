\name{sentiment}
\alias{sentiment}
\alias{sentiment.default}
\title{Calculates sentiment score.}
\usage{
  sentiment(x, dict = c("afinn111", "afinn96"), sep = " ",
    removePunct = TRUE, ...)
}
\arguments{
  \item{x}{String}

  \item{dict}{Dictionary to use: either "afinn111" or
  "afinn96"}

  \item{sep}{Charater string to use as word boundary}

  \item{removePunct}{If TRUE, removes punctuation from
  words}

  \item{...}{not used}
}
\value{
  A numerical value between -5 and +5. Returns \code{NaN}
  if none of the words are found in the dictionary.
}
\description{
  Splits string into words (by default at space), looks up
  affinity score for each word and returns average.
}
\examples{
sentiment(c("There is a terrible mistake in this work", "This is wonderful!"))
}
\seealso{
  Other sentiment.functions: \code{\link{sentiment.status}}
}

