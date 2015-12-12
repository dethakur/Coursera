setwd("Documents/Coursera/")
setwd("Documents/Coursera/")
setwd("Programming in R/")
setwd("Programming in R/")
setwd("Week3/")
outcome_df <- read.csv("outcome-of-care-measures.csv",colClasses = "character");
colnames(outcome_df)
new_df = outcome_df[,c(2,7,11,17,23)]
values <- c("heart attack","heart failure","pneumonia");
state <- "TX"
outcome <- "yyy"
values[outcome]
outcome <- "heart attack"
values[outcome]
values
values[[outcome]]
values[outcome]
values
match(values,outcome)
is.na(match(values,outcome))
outcome in vector
outcome %in% vector
outcome %in% values
head(new_df)
apply(new_df,x,sum)
apply(new_df,1,sum)
new_df = outcome_df[,c(2,7)]
new_df = outcome_df[,c(2,7)]
head(new_df)
new_df = outcome_df[outcome$State == state]
new_df = outcome_df[outcome_df$State == state]
new_df = outcome_df[outcome_df$State == state]
new_df$State
new_df = new_df[new_df$State == state]
state
new_df[new_df$State == state]
new_df[new_df$State == state,]
new_df = new_df[new_df$State == state,c(2,17)]
new_df = new_df[new_df$State == state,]
ncols(new_df)
ncol(new_df)
head(new_df)
new_df = outcome_df[,c(2,7,11,17,23)]
new_df = new_df[new_df$State == state,]
head(new_df)
new_df = outcome_df[,c(2,7,11)]
new_df = new_df[new_df$State == state,]
head(new_df)
new_df = outcome_df[outcome_df$State == state,c(2,11)]
head(new_df)
head(new_df)
apply(new_df,1,sum)
savehistory("temp.R")
