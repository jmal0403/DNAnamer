library(seqinr)
getFreqDF <- function(seq.df, total.seq.length, seg.len, order, organism)
  {
  seq.vector <- sapply(strsplit(seq.df$seq, ""), function(x) x[1:length(x)], simplify=FALSE)
  alpha <- c("A","C","G","T")
  i=1
  freq.2nd<-NULL
  freq.3rd<-NULL
  freq.4th<-NULL
  freq.5th<-NULL

  ## Calculate N-gram frequencies
  no.training=(total.seq.length/seg.len)
  for (i in 1:no.training){
    if (order == 5) {
      freq.5th <- rbind(freq.5th, seqinr::count(seq.vector[[i]], 5, alphabet=alpha,freq=TRUE))
      freq.4th <- rbind(freq.4th, seqinr::count(seq.vector[[i]], 4, alphabet=alpha,freq=TRUE))
      freq.3rd<- rbind(freq.3rd, seqinr::count(seq.vector[[i]], 3, alphabet=alpha,freq=TRUE))
      freq.2nd <- rbind(freq.2nd, seqinr::count(seq.vector[[i]], 2, alphabet=alpha,freq=TRUE))
    }
    else if (order == 4) {
      freq.4th <- rbind(freq.4th, seqinr::count(seq.vector[[i]], 4, alphabet=alpha,freq=TRUE))
      freq.3rd<- rbind(freq.3rd, seqinr::count(seq.vector[[i]], 3, alphabet=alpha,freq=TRUE))
      freq.2nd <- rbind(freq.2nd, seqinr::count(seq.vector[[i]], 2, alphabet=alpha,freq=TRUE))
    }
    else if (order > 2) {
      freq.3rd<- rbind(freq.3rd, seqinr::count(seq.vector[[i]], 3, alphabet=alpha,freq=TRUE))
      freq.2nd <- rbind(freq.2nd, seqinr::count(seq.vector[[i]], 2, alphabet=alpha,freq=TRUE))
    }
    else {
      freq.2nd <- rbind(freq.2nd, seqinr::count(seq.vector[[i]], 2, alphabet=alpha,freq=TRUE))
    }
  }

  if (order == 5) {
    freq.5th <- as.data.frame(freq.5th)
    freq.5th$class <- organism
    freq.4th<- as.data.frame(freq.4th)
    freq.3rd <- as.data.frame(freq.3rd)
    freq.2nd <- as.data.frame(freq.2nd)
    final.df <- cbind(freq.2nd, freq.3rd, freq.4th, freq.5th)
  }
  else if (order == 4) {
    freq.4th<- as.data.frame(freq.4th)
    freq.4th$class <- organism
    freq.3rd <- as.data.frame(freq.3rd)
    freq.2nd <- as.data.frame(freq.2nd)
    final.df <- cbind(freq.2nd, freq.3rd, freq.4th)
  }
  if (order == 3) {
    freq.3rd <- as.data.frame(freq.3rd)
    freq.3rd$class <- organism
    freq.2nd <- as.data.frame(freq.2nd)
    final.df <- cbind(freq.2nd, freq.3rd)
  }
  if (order == 2) {
    freq.2nd <- as.data.frame(freq.2nd)
    freq.2nd$class <- organism
    final.df <- freq.2nd
  }
  freq.2nd<-NULL
  freq.3rd<-NULL
  freq.4th<-NULL
  freq.5th<-NULL
  final.df <-na.omit(final.df)
  return(final.df)
}
