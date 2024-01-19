loadRefGenome <- function(organism.name) {
  library(Biostrings)
  library(biomartr)
  genome.refseq <- getGenome(db = "refseq", organism = organism.name)
  Genome <-  read_genome(file = genome.refseq)
  return(Genome)
}
