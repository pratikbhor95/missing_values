#import the store_dataset.csv file 

test_dataset <- read.csv(file = "E:\\pratik\\hyd\\data analytics\\my projects\\replace missing values in dataset using R\\test.csv")

# total number of missing values
sum(is.na(test_dataset))

fix(test_dataset)

#postal.code is the column where there are missing values
names(test_dataset)

mean_dataset = colMeans(test_dataset, na.rm = TRUE)
m_col1 <- mean_dataset[2]
m_col2 <- mean_dataset[3]
m_col3 <- mean_dataset[4]
m_col4 <- mean_dataset[5]


test_dataset1<- data.frame(test_dataset)
test_dataset1

#just to check the the na values

which(is.na(test_dataset1))

# replaces the missing values by the mean of every column

test_dataset$col1[which(is.na(test_dataset1$col1))] <- m_col1
test_dataset$col2[which(is.na(test_dataset1$col2))] <- m_col2 
test_dataset$col3[which(is.na(test_dataset1$col3))] <- m_col3
test_dataset$col4[which(is.na(test_dataset1$col4))] <- m_col4 



#now the missing values are replaced by mean
fix(test_dataset)


