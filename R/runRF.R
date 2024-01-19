runRF <- function(final.df){
  library(randomForest)
  set.seed(27)
  train_index <- createDataPartition(y=final.df$class, p=0.5, list=FALSE)
  ## Subset the data
  train.df <- final.df[train_index, ]
  test.df <- final.df[-train_index, ]
  rf.fit <- randomForest(as.factor(class) ~ ., data=train.df, ntree=300, keep.forest=TRUE, importance=TRUE, mtry=40, nPerm=100)
  rf.fit
  rf.pred = predict(rf.fit, newdata = test.df[,-(ncol(test.df))], decision.values =TRUE, proximity=FALSE, nodesize=40)
  table(rf.pred==test.df$class)
  prop.table(table(rf.pred==test.df$class))
  return(rf.fit)
}
