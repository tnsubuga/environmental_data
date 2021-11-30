#Load Iris Data set into R's memory
data(iris)

#Look at top 6 rows
head(iris)

#Get the entries in the "Sepal.width" column
iris$Sepal.Width

#Calculate mean of "Sepal.Length" column 
mean(iris$Sepal.Length)

#Calculate the standard deviation of "Sepal.Width column
sd(iris$Sepal.Width)

#Create scatter plot of Sepal width vs. Sepal Length
plot(x= iris$Sepal.Width, y =iris$Sepal.Length)

#Find the center of the iris data
data_center_x <- mean(iris$Sepal.Width)
data_center_y <- mean(iris$Sepal.Length)
c(data_center_x, data_center_y)

#Add a red point at the center of the existing plot
points(x = data_center_x , y = data_center_y , col = "red")

#calculate the coordinates of points on a line 
#given the x- and y- coordinates of a known point and a slope

#the four arguments to line_point_slope() are:
#the x-value for which to calculate the y-value output
#the x-coordinate of the known point along the line.
#the y-coordinate of the known point along the line.
#the slope of the line.
line_point_slope <-  function(x, x1, y1, slope)
{
  get_y_intercept <- 
    function(x1, y1, slope)
      return(-(x1*slope)+ y1)
  
  linear <- 
    function(x1, yint, slope)
      return(yint + x*slope)
  
  return(linear(x,get_y_intercept(x1,y1,slope), slope))
}

#plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
#Use curve() to add a line or other curve to the existing plot
curve(
  line_point_slope(
    x, 
    data_center_x, 
    data_center_y,
    7.5
    ), 
  add = TRUE)


# Try to re-use and modify the code above to work with other datasets. 
#Experiment with plotting other lines to graphically describe the data.

#Load MASS package 
library(MASS)

#Load Animals data set
data(Animals)

#Look at first 6 rows
head(Animals)

#Get the entries in the "body" column
Animals$body

#Calculate mean of "brain" column 
mean(Animals$brain)

#Calculate the standard deviation of "body" column
sd(Animals$body)

#Create scatter plot of body vs. brain
plot(x= Animals$body, y = Animals$brain, main = "Tim's Very (Animal) Brains Over Brawn Line!",
     xlab = "body", ylab = "brain", xlim = c(0,15000), ylim = c(0,3000) )

#Find the center of the Animals data
data_center_x <- mean(Animals$body)
data_center_y <- mean(Animals$brain)
c(data_center_x, data_center_y)

#Add a red point at the center of the existing plot
points(x = data_center_x , y = data_center_y , col = "red")

#calculate the coordinates of points on a line 
#given the x- and y- coordinates of a known point and a slope

#the four arguments to line_point_slope() are:
#the x-value for which to calculate the y-value output
#the x-coordinate of the known point along the line.
#the y-coordinate of the known point along the line.
#the slope of the line.
line_point_slope <-  function(x, x1, y1, slope)
{
  get_y_intercept <- 
    function(x1, y1, slope)
      return(-(x1*slope)+ y1)
  
  linear <- 
    function(x1, yint, slope)
      return(yint + x*slope)
  
  return(linear(x,get_y_intercept(x1,y1,slope), slope))
}

#plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
#Use curve() to add a line or other curve to the existing plot
curve(
  line_point_slope(
    x, 
    10, 
   115 ,
  2
  ), 
  add = TRUE)


