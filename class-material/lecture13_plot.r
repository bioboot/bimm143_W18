##

## Load expresion data from a file or from online

#expr <- read.table("rs8067378_ENSG00000172057.6.txt")
url <- "https://bioboot.github.io/bimm143_W18/class-material/rs8067378_ENSG00000172057.6.txt"
expr <- read.table(url)

# Check the genotype sample size and overal summary stats 
summary(expr)

## Lets break it down to the three genotypes
summary( expr[expr[,2] == "A/A",3] )
summary( expr[expr[,2] == "G/G",3] )
summary( expr[expr[,2] == "A/G",3] )


# Generate a boxplot for expression data of different genotype groups
p <- boxplot(exp~geno, data=expr, xlab="rs8067378 genotype", ylab="ENSG00000172057.4 (RPKM)", notch=T)

## Look at the output 'p' and you will see the median values etc. used to generate the plot have been returned (see help page for details)

## Histogram of the exp column with ggplot2
library(ggplot2)
ggplot(expr, aes(exp, fill = geno)) + geom_density(alpha = 0.2)

## You could also generte this histogram with base graphics but it will take quite  few more steps to make it as attractive ;-)

