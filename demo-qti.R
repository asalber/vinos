## exams ----------------------------------------------------------------------------

## load package
library("exams")

## exam with a simple vector of exercises in R/Markdown (.Rmd) format
## -> alternatively try a list of vectors of more exercises
myexam <- c("deriv.Rmd", "swisscapital.Rmd", "boxplots.Rmd", "function.Rmd", "lm.Rmd", "currency8.Rnw")
## note that the currency exercise is in UTF-8 encoding


## exams2qti12 ----------------------------------------------------------------------
## XML output in QTI 1.2 format (1 file containing all exams, zipped by default)
## -> for import into QTI-based learning management systems (e.g., OLAT/OpenOLAT)

## generate QTI 1.2 exam with three replications per question
## (showing correct solutions after failed attempts and passing if solving
## at least two items)
exams2qti12(myexam, n = 3, name = "qti12-demo",
  encoding = "UTF-8",
  dir = "output",
  edir = "exercises",
  solutionswitch = TRUE, maxattempts = 1, cutvalue = 2)

## hint: if customization of the QTI 1.2 template is necessary, modify
## the file templates/qti12.xml and then set the argument:
## template = "templates/qti12.xml"

## hint: to quickly check (prior to QTI export) whether each exercise can be
## converted to HTML, exams2html() can be used
exams2html("exercises/deriv.Rmd")


## ----------------------------------------------------------------------------------
