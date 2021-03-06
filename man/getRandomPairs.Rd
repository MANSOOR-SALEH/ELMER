% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Small.R
\name{getRandomPairs}
\alias{getRandomPairs}
\title{Get random pairs}
\usage{
getRandomPairs(pairs, genome = "hg38", met.platform = "450K", cores = 1)
}
\arguments{
\item{pairs}{A data frame with probe, gene and side information. See example below.}

\item{genome}{Which genome build will be used: hg38 (default) or hg19.}

\item{met.platform}{DNA methyaltion platform to retrieve data from: EPIC or 450K (default)}

\item{cores}{A interger which defines the number of cores to be used in parallel 
process. Default is 1: no parallel process.}
}
\value{
A data frame with the random linkages
}
\description{
This function will receive a pair gene probes and will return a 
random object with the following pattern, if a probe is linked to R1 and L3 genes
the random pairs will be a random probes (a distal probe not in the input pairs) 
also linked to its R1 and L3 gene.
}
\examples{
\dontrun{
 data <- ELMER:::getdata("elmer.data.example")
 nearGenes <- GetNearGenes(TRange=getMet(data)[c("cg00329272","cg10097755"),],
                            geneAnnot=getExp(data))
                            
 pair <- get.pair(data = data,
                  group.col = "definition", 
                  group1 = "Primary solid Tumor", 
                  group2 = "Solid Tissue Normal",
                  mode = "supervised",
                  diff.dir = "hypo",
                  nearGenes = nearGenes,
                  permu.size = 5,
                  raw.pvalue =  0.001,
                  Pe = 0.2,
                  dir.out="./",
                  permu.dir = "permu_test",
                  label = "hypo")
}
 pair <- data.frame(Probe = rep("cg00329272",3), 
                    GeneID = c("ENSG00000116213","ENSG00000130762","ENSG00000149527"),
                    Sides = c("R5","R2","L4"))                    
 getRandomPairs(pair)
}
