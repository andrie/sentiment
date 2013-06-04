# sentiment

An [R] package to perform (naive) sentiment analysis by scoring individual words, based on the affinity score defined by [AFINN] (http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010)

## Install package from github

	install.packages("devtools")
	library("devtools")
	install_github("sentiment", "andrie")

## Sentiment analysis on strings:

	sentiment(c("There is a terrible mistake in this work", "This is wonderful!"))
	
## Sentiment analysis on twitteR data:

	if(require(twitter)){
		library(twitteR)
		tweets  <- searchTwitter("#mcdonalds", n=25)
		sentiment(tweets[[1]])
		sapply(tweets, sentiment)
	}
