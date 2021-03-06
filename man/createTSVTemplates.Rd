% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Small.R
\name{createTSVTemplates}
\alias{createTSVTemplates}
\title{Create examples files for Sample mapping and information used in createMAE function}
\usage{
createTSVTemplates(met, exp)
}
\arguments{
\item{met}{DNA methylation matrix or Summarized Experiment}

\item{exp}{Gene expression matrix or Summarized Experiment}
}
\description{
This function will receive the DNA methylation and gene expression matrix and will create
some examples of table for the argument colData and sampleMap used in ceeateMae function.
}
\examples{
gene.exp <- S4Vectors::DataFrame(sample1.exp = c("ENSG00000141510"=2.3,"ENSG00000171862"=5.4),
                  sample2.exp = c("ENSG00000141510"=1.6,"ENSG00000171862"=2.3))
dna.met <- S4Vectors::DataFrame(sample1.met = c("cg14324200"=0.5,"cg23867494"=0.1),
                       sample2.met =  c("cg14324200"=0.3,"cg23867494"=0.9))
createTSVTemplates(met = dna.met, exp = gene.exp)                       
}
