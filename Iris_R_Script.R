## Set the working directory

setwd("C:/Users/julie/Desktop/GITHUB/iris")

## Install packages

install.packages("nnet")
library(nnet)


## Importing data

mydata <- read.csv2("mydata.csv",header=TRUE, sep=",", dec=".")

## Explore the data

summary(mydata)

# View the first rows 
head(mydata)

# Display the list of variables
names(mydata)

# Tabular display

View(mydata)

# Statistical summary

summary(mydata)

# Data structure

str(mydata)

## Exploratory Data Analysis (EDA)
### Visualizations ###

#Histograms for Each Numerical Variable:
hist(iris$Sepal.Length, main="Histogram of Sepal Length", xlab="Sepal Length")
hist(iris$Sepal.Width, main="Histogram of Sepal Width", xlab="Sepal Width")
hist(iris$Petal.Length, main="Histogram of Petal Length", xlab="Petal Length")
hist(iris$Petal.Width, main="Histogram of Petal Width", xlab="Petal Width")

#Scatter Plots for Variable Combinations:
plot(iris$Sepal.Length, iris$Sepal.Width, main="Sepal Length vs Sepal Width", xlab="Sepal Length", ylab="Sepal Width")
plot(iris$Petal.Length, iris$Petal.Width, main="Petal Length vs Petal Width", xlab="Petal Length", ylab="Petal Width")

#Boxplots to Compare Features by Species:

boxplot(iris$Sepal.Length ~ iris$Species, main="Sepal Length by Species", ylab="Sepal Length")
boxplot(iris$Sepal.Width ~ iris$Species, main="Sepal Width by Species", ylab="Sepal Width")
boxplot(iris$Petal.Length ~ iris$Species, main="Petal Length by Species", ylab="Petal Length")
boxplot(iris$Petal.Width ~ iris$Species, main="Petal Width by Species", ylab="Petal Width")

### Descriptive Statistics

# Calculate Additional Measures:

var(iris$Sepal.Length)
sd(iris$Sepal.Length)

### Data Cleaning and Preparation ###
#Check for Missing Values
sum(is.na(iris))

### Statistical Analysis and Modeling

#ANOVA test to check if the mean sepal length is significantly different across the different species.
anova_result <- aov(Sepal.Length ~ Species, data=iris)
summary(anova_result)

# Machine Learning: Classification Model
#Fit a Multinomial Logistic Regression Model:

model <- multinom(Species ~ ., data=train_data)

#Make Predictions and Evaluate the Model:

predictions <- predict(model, test_data)
table(predictions, test_data$Species)

### Visualizations using R  ###

library(ggplot2)
data(iris)

# Histograms for each numerical variable
png("histograms.png")
par(mfrow=c(2,2))

hist(iris$Sepal.Length, main="Histogram of Sepal Length", xlab="Sepal Length", col="skyblue")
hist(iris$Sepal.Width, main="Histogram of Sepal Width", xlab="Sepal Width", col="green")
hist(iris$Petal.Length, main="Histogram of Petal Length", xlab="Petal Length", col="gold")
hist(iris$Petal.Width, main="Histogram of Petal Width", xlab="Petal Width", col="red")

dev.off()

# Scatter plots for variable combinations
install.packages("GGally")
library(GGally)
png("scatter_plots.png")
ggpairs(iris, columns=1:4, ggplot2::aes(colour=Species))
dev.off()

# Boxplots for Each Variable by Species
png("boxplots.png")
par(mfrow=c(2,2))

boxplot(iris$Sepal.Length ~ iris$Species, main="Sepal Length by Species", ylab="Sepal Length")
boxplot(iris$Sepal.Width ~ iris$Species, main="Sepal Width by Species", ylab="Sepal Width")
boxplot(iris$Petal.Length ~ iris$Species, main="Petal Length by Species", ylab="Petal Length")
boxplot(iris$Petal.Width ~ iris$Species, main="Petal Width by Species", ylab="Petal Width")

dev.off()

# Heatmap of Correlation Matrix
install.packages("corrplot")
library(corrplot)
cor_matrix <- cor(iris[,1:4])
png("correlation_heatmap.png")
corrplot(cor_matrix, method="circle")
dev.off()





