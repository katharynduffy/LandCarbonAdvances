## this file is to run by the isntructor to preapre the teaching materials

library(knitr)

wd <- getwd()

setwd('Image_Processing/')

rmd_files <- dir(pattern = '*.Rmd', full.names = TRUE)

for(ii in 1:length(rmd_files)){
  knit(rmd_files[ii])
  purl(rmd_files[ii])
}

code_files <- dir(pattern = '*.R$')
file.rename(from = code_files, to = paste0('codes/', code_files))

setwd(wd)
