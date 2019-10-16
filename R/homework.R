library(exams)
# Settings (run only onte time)
# exams_skeleton(markup = "markdown", encoding = "UTF-8", writer = c("exams2html", "exams2pdf", "exams2qti12"))

# Data generation
library(car)
load("data/vinos.Rdata")
# Recode meses to envejecimiento
vinos$envejecimiento <- Recode(vinos$meses.barrica, 'lo:3 = "joven"; 3:12 = "crianza"; 12:18 = "reserva"; 18:hi = "gran reserva"', as.factor=TRUE)
# Reorder levels of ordered factor envejecimiento
vinos$envejecimiento <- ordered(vinos$envejecimiento, levels=c("joven", "crianza", "reserva", "gran reserva"))
# Recode azucar.residual to dulzor
vinos$dulzor <- Recode(vinos$azucar.residual, 'lo:4 ="seco"; 4:12="semiseco"; 12:45="semidulce"; 45:hi="dulce"', as.factor=TRUE)
# Reorder levels of dulzor
vinos$dulzor <- ordered(vinos$dulzor, levels=c("seco", "semiseco", "semidulce", "dulce"))

# List of questions
work <- paste0("questions/", c("des-1.Rmd"))

exams2html(work)

set.seed(1234)
exams2blackboard(work)


