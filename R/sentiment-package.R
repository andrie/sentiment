# package documentation
# 
# Author: Andrie
###############################################################################


#' Calculates sentiment scores using affinity dictionaries.
#'
#' This is a set of tools for calculating sentiment scores using affinity dictionaries.
#' 
#' Export a function \code{\link{sentiment}}.
#' 
#' @name sentiment-package
#' @docType package
#' @title Calculates sentiment scores using affinity dictionaries.
#' @author Andrie de Vries \email{apdevries@@gmail.com}
#' @keywords package
#' @seealso \code{\link{sentiment}}
NULL

#----------------------------------------------------------------------------

#' Named vector with affinity data.
#' 
#' @docType data
#' @keywords datasets
#' @name afinn111
#' @usage afinn111
#' @format Named vector
#' @source http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010
NULL

#' Named vector with affinity data.
#' 
#' @docType data
#' @keywords datasets
#' @name afinn96
#' @usage afinn96
#' @format Named vector
#' @source http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010
NULL

#.onAttach <- function(libname, pkgname){
#  data("afinn111")
#  data("afinn96")
#}


NULL

