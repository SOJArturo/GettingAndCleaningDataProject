# Load test data
test <- read.table("./test/X_test.txt")
# Load test subjects
sub1 <- read.table("./test/subject_test.txt")
# Load test activities
act1 <- read.table("./test/y_test.txt")
# Turn activities to vector
act1 <- act1$V1
# Name activities
act1[grepl(1, act1)] <- "WALKING"
act1[grepl(2, act1)] <- "WALKING_UPSTAIRS"
act1[grepl(3, act1)] <- "WALKING_DOWNSTAIRS"
act1[grepl(4, act1)] <- "SITTING"
act1[grepl(5, act1)] <- "STANDING"
act1[grepl(6, act1)] <- "LAYING"
# Load name variables
var1 <- read.table("features.txt")
# Name test variables
colnames(test) <- var1$V2
# Remove unwanted variables
test <- test[-c(7:40, 47:120, 127:561)]
# Add to test data subject and activity columns
test$subject <- sub1$V1
test$activity <- act1
# Load train data
train <- read.table("./train/X_train.txt")
# Load train subjects
sub2 <- read.table("./train/subject_train.txt")
# Load train actitities
act2 <- read.table("./train/y_train.txt")
# Turn activities to vector
act2 <- act2$V1
# Name activities
act2[grepl(1, act2)] <- "WALKING"
act2[grepl(2, act2)] <- "WALKING_UPSTAIRS"
act2[grepl(3, act2)] <- "WALKING_DOWNSTAIRS"
act2[grepl(4, act2)] <- "SITTING"
act2[grepl(5, act2)] <- "STANDING"
act2[grepl(6, act2)] <- "LAYING"
# Name train variables
colnames(train) <- var1$V2
# Remove unwanted variables
train <- train[-c(7:40, 47:120, 127:561)]
# Add to train data subject and activity columns
train$subject <- sub2$V1
train$activity <- act2
# Join test and train into total
total <- rbind(test, train)
# Remove unwanted characters from variables' names
names <- colnames(total)
names <- gsub("-", "", names)
names <- gsub("mean", "Mean", names)
names <- gsub("std", "Std", names)
names <- gsub("\\(\\)", "", names)
# Rename variables
colnames(total) <- names
# Melt subject and activity variables to perform summary
library(reshape2)
melted <- melt(total, id.vars = c("subject", "activity"))
# Summarize variables and show their mean
library(plyr)
result <- ddply(melted, c("subject", "activity", "variable"), summarise, mean = mean(value))
# Export to file
write.table(result, "result.txt", row.name = FALSE)
