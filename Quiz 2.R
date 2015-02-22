## Question 1
## There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica? (Please only enter the numeric result and nothing else.)

library(datasets)
data(iris)
s <-split(iris, iris$Species)
mean(s$virginica$Sepal.Length)
## alternativa usando tapply
tapply(iris$Sepal.Length, iris$Species, mean)


## Question 2
## Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

apply(iris[, 1:4], 2, mean)

## Question 3
## How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?

library(datasets)
data(mtcars)
tapply(mtcars$mpg, mtcars$cyl, mean)

## Question 4
## Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
s2 <-split(mtcars, mtcars$cyl)
dif <- mean(s2$`8`$hp)-mean(s2$`4`$hp)
abs(dif)

## Question 5
## If you run debug(ls) what happens when you next call the 'ls' function?