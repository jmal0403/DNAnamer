
getSequence <- function(organism.name, Genome, total.seq.length, seg.len) {
  library(stringr)
  # Join all contigs
  if (organism.name == "Homo sapiens") {
    seq.char <- toString(Genome[2:33])
  }
  else if (organism.name == "Elephas maximus") {
    seq.char <- toString(Genome[1:15])
  }
  else if (organism.name == "Phascolarctos cinereus") {
    seq.char <- toString(Genome[1:8])
  }
  else if (organism.name == "Delphinus delphis") {
    seq.char <- toString(Genome[1:10])
  }
  else {
    seq.char <- toString(Genome[1:length(Genome)])
  }
  genome.len <- sum(nchar(seq.char))
  start.index <- sample(1:(genome.len-total.seq.length),1,replace=F)
  seq.char <- substr(seq.char,start=start.index,stop=start.index+total.seq.length+1)
  seq.char <- str_replace(seq.char, "N", "")
  seq.df <- as.data.frame(splitStr(seq.char, seg.len))
  colnames(seq.df)<- "seq"
  return(seq.df)
}
