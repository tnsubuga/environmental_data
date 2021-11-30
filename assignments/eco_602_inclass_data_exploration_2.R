#install palmerpenguins package 
install.packages("palmerpenguins")
#install "here" package 
install.packages("here")
# Since these packages aren’t part of base-R, you have to tell R 
#that you want to use the using the require() or library() function.
#Mike prefers require():
require(palmerpenguins)
require(here)
#To quote or not to quote: Since these packages aren’t part of base-R, 
#you have to tell R that you want to use the using the require() or library() 
#function. I prefer require():

#Use class() to check what kind of object penguins is.
class(penguins)
#The data are in a slightly different type of object than our familiar data.frame.
#To avoid any difficulties, you need to convert it to a data.frame object:
penguins = data.frame(penguins)
#Try to calculate the mean bill length of all the penguins:
mean(penguins$body_mass_g)
#Got an error, use head to preview the data
head(penguins)
#Some functions, like mean() don’t work well with missing data, i.e.
#elements that are NA or NULL
?mean()
#Did you notice the description for the na.rm argument.
#What does it do?
# Try setting it to TRUE
mean(penguins$body_mass_g, na.rm = TRUE)
#na.rm determines whether na should be removed before the calculation
#Try out the summary() function on the entire penguins data frame. 
#This function provides a lot of information:
summary(penguins)
# Try out some of the plots you already know:
#pair plot, scatterplot, histogram
pairs(penguins)
#explore later if you want because we have gone over scatter plot 
#plot(x = penguins$species, y = penguins$)
hist(penguins$bill_depth_mm)
#And some of the others we haven’t used in class yet:boxplot() and coplot()
#template for the coplot and boxplot syntax
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
#What is the different insight you can gain from each boxplot separately 
#and together?
#It might be easier to compare them side-by-side
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)
#coplots
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)
#trying out categorical values
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

