classifySeqSVM <- function(train.df, cost, sigma) {
  library(e1071)
  # Cost affects performance and should be used in sensitivity analysis
  kernel.type<-'radial'
  classification.machine<-'C-classification'
  svmfit = e1071::svm(formula = as.factor(class) ~ .,data = train.df, cost=cost, type =classification.machine, kernel = kernel.type, probability=TRUE, sigma=sigma)
  return(svmfit)
} 
