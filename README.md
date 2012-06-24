# sentiment

An [R] package to perform sentiment analysis

## Install package from github

	install.packages("devtools")
	library("devtools")
	install_github("andrie", "sentiment")

## Sentiment analysis on string:

	sentiment(c("There is a terrible mistake in this work", "This is wonderful!"))
	
## Sentiment analysis on twitteR data:

if(require(twitter)){
	library(twitteR)
	tweets  <- searchTwitter("#mcdonalds", n=25)
	sentiment(tweets[[1]])
	sapply(tweets, sentiment)
}