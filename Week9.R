# Before we get started we need to install a few packages. 
# Enter these commands one by on. 
install.packages("archdata")

library(archdata)

install.packages("car")

library(car)

# Important NOTE: the package RcmdrMisc may not install properly - 
# it may take a long time. If that happens, click on the stop sign
# at the top right of the R console section of RStudio, stoping it. 
# Click on the "Packages" tab in the file folder section of RStudio. Click on "Install"
# Type in the name RcmdrMisc and try to install it that way. 

# We're going to focus on visualizing more complex data this week - where we want to see three or more variables. 
# Let's use the DartPoints dataset in archdata. 
data(DartPoints)

# And take a look at the dataframe
View(DartPoints)

# We want to visualize three numerical variables in this dataset: Length of the points, Width of the points, 
# Thickness of the points. We'll use the scatterplotMatrix from RcmdrMisc. We've use scatterplots in the past but 
# this matrix allows us to see multiple variables at once. This matrix will show three variables, with six scatter plots,
# and three kernel density plots. Kernel density shows the distribution of numerical counts of a single variable: 
# they can be normally distributed or skewed one way or another - this tells us something about the data.

scatterplotMatrix(~Length+Width+Thickness, DartPoints, smooth=FALSE)

# You might ask, why are there six plots but only three variables? Good question. There are two plots for every two
# variables - they just switch which is the x axis and which is the y axis. See if you can figure out which is which.

# Export this scatterplot matrix as an image and save/download it - you'll upload to this week's GitHub repo. 

# Now, what if we want to add in another variable, a categorical variable: the type of point (Darl, Ensor, etc.)
# This can show us how the different point types change in terms of the three numerical variables we plotted. 
scatterplotMatrix(~Length+Width+Thickness | Name, DartPoints, smooth=FALSE, diagonal=list(method="boxplot"), cex.labels=1.25, cex=.8)

# Let's look at what each part of the command means: we see the three variables we want, Name tells R that we want
# to separate the variable "Name", smooth=FALSE means we don't want a smoothing line, diagonal=list(method="boxplot") tells R
# we want boxplots as our diagonal graphs, cex.labels is the size of text, cex is the size of points. 

# Export this new scatterplot matrix bith boxplots as an image and save/download it - you'll upload to this week's GitHub repo. 

# Good, now let's try another way to visualize three numerical variables and one categorical variable. 
# First, we'll install the scatterplot3D package.
install.packages("scatterplot3D")
library(scatterplot3d)

# We'll first create a value called shapes. This is a vector from plotting characters (shapes) 21-25.
shapes <- 21:25

# Then we'll create a list - the command is complicated. I recommend looking at the function description to indentify each
# part of the command - alternatively, you can try removing or changing some of the factors and see what changes. 
list3D <- with(DartPoints, scatterplot3d(Length, Width, Thickness, type="h", lty.hplot = 3, bg="black", pch=shapes[Name], angle=60, scale.y=.5))

# The last thing to add is the legend. 
legend(list3D$xyz.convert(20, 50, 11), levels(DartPoints$Name), pch=shapes, pt.bg="black", yjust=0, ncol=3, xpd=TRUE)

# Which type of graphical visualization shows the patterns in the data better? Export this plot as an image and save/download it. 
# Then upload it to this week's GitHub repo. 

# We'll export the dataframe DartPoints from R so we can use it later. This will show up in your directory - if you're
# using RStudio through a binder, make sure to download it. 
write.csv(DartPoints, file="DartPoints.csv")

# Last thing we'll do visualize a seriation. Seriations are one of the earliest ways that archaeologists show change
# in artifacts over time, indicating changes in behavior and object production/use through time.
# Make sure the package "plotrix" is installed at bring it into the enivornment. 
install.packages("plotrix")
library(plotrix)

# We're going to use the dataset "Nelson" which shows pottery amounts from a midden deposit at Pueblo San Cristobal, excavated by 
# Nels Nelson in 1916 - the depth shows the stratigraphic depth, and then there are counts of each type of pottery. 
data(Nelson)
View(Nelson)

# Then we create a new dataframe made up of percentages of each pottery type from a specific depth.
# Look at the command and make sure you understand how it's creating %.
Nelson.pct <- Nelson[,3:8]/rowSums(Nelson[,3:8])*100

# Then we create a vector of ceramic type names, replacing the underscore "_" with a space. 
types <- gsub("_", "", colnames(Nelson)[3:8])

# Finally, we'll plot the data. "mar" command makes some space at the type of the plot for labels.
battleship.plot(Nelson.pct, mar=c(2, 5, 7, 1), main="Pueblo San Cristobal", xaxlab=types, col="gray")

# What type of patterns does this graphical visualization show us? 
# Last, we'll export this data for use elsewhere. 
write.csv(Nelson.pct, file="Nelson.csv")
