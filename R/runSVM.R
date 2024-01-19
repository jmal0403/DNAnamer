runSVM <- function(final.df){
  library(caret)
  library(pROC)
  set.seed(29)
  train_index <- caret::createDataPartition(y=final.df$class, p=0.5, list=FALSE)
  train.df <- final.df[train_index, ]
  test.df <- final.df[-train_index, ]
  svm.fit <- classifySeqSVM(train.df, 3, 0.2)
  y_pred = predict(svm.fit, newdata = test.df[,-(ncol(test.df))], decision.values =TRUE)
  print(table(test.df$class==y_pred))
  roc_svm_test <- roc(response=test.df$class, predictor = as.numeric(y_pred))
  roc_svm_test
}
