splitStr <- function(x, n) {
  sst <- strsplit(x, '')[[1]]
  m <- matrix('', nrow=n, ncol=(length(sst)+n-1)%/%n)
  m[seq_along(sst)] <- sst
  apply(m, 2, paste, collapse='')
}
