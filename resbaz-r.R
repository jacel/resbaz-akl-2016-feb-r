# R is a calculator!
3+5

# Use # to write comments
# Anything to the right of # will be ignored by R

# Tell R what folder we are working in
setwd('Desktop/r-data/')
getwd()
list.files() 

# Read your dataset into R!
read.csv('vandevijver-CLIN-STAT435.csv')

# Assigning variables
# NB type alt '-' as a shortcut for '<-'
height <- 164
height

# Altering variables
height <- height + 10
height

new <- 155
total <- height+new
total

# Make a list using the function 'c', which stands for 'combine'

evens <- c(2,4,6,8)
odds <- evens + 1
odds # this is a list

# Assign whole dataset to a variable called 'dat'

dat <- read.csv('vandevijver-CLIN-STAT435.csv')

##Assigning variables Challenge

years <- 34
height <- 190
years <- years+12
height <- height*3
#What will this show?
years 
height
# "years" "height" # a) 
# 34 190 # b) 
# 46 570 # c) - correct!
# 102 202 # d) 

# Take a quick peep at your dataset

dat
head(dat)
dim(dat)

# Subsetting data
# [rows, columns]
# Doing it with numbers
# Single numbers, or a slice ie. 1:10

dat[1,1]
dat[0,0]

dat[1,]
dat[,1]
dat[1:10,]
dat[1:10,3:5]

##Subsetting Challenge

#How do I select the ages (hint: column 2) of the first 10 patients?
dat[1,10] # a)
dat[1:10,2] # b) - correct
dat[2,1:10] # c)
dat[1:10] # d)

# Subset using a list of row numbers

dat[c(1,3,5,9),]

# Subset using a list of column names

dat[1:5,c('Age', "ER", "Grade")]

# Print all the column names

colnames(dat)

# Subset using $ - but only one column at a time

dat$Intrinsic.Subtype

# Add one to every value in a column
# Always check that it worked the way you expect!

newage <- dat$Age+1
dat[1:5,'Age']
newage[1:5]

# Do functions to a column

mean(dat$Age)
min(dat$Age)
sd(dat$Age)

##Subsetting 2 Challenge

#Find the mean ages (hint: column 2) of all patients?
mean(dat[,'Age']) # a)
mean(dat[,2]) # b) - correct
mean(dat$Age) # c) - correct
mean(dat[,'Age']) # d) - correct

# Create a new column, put stuff in it
# Check it worked

dat$newage <- dat$Age + 1
dim(dat)
dat[1:5, c('Age', 'newage')]

# Get help from R

?mean
??read

# Useful websites;
# SO MANY
# http://www.statmethods.net/index.html 
# http://stackoverflow.com/questions/tagged/r?sort=votes&pageSize=15
# Google

# Plotting
# Default plots in R are ok, but not always the best. 
# Try a few different ones out!
# You can also sort your data
# Histograms are nice
# Plot 2 variables against each other

plot(dat$Age)
sort(dat$Age)

plot(sort(dat$Age))

hist(dat$Age)

colnames(dat)

plot(dat$Age, dat$RFS.months)

##Plotting Challenge

#Plot RFS.months(column 10) against OS.months(column 12)
#Use any subsetting method you'd like!
#Show your neighbour!
#Put up a green sticky when you're done!

plot(dat$Age, dat$newage)

plot(dat[,10], dat[,12])

str(dat)

plot(dat$Intrinsic.Subtype)

# Data types are a thing, read up on them if you want!
# http://www.statmethods.net/input/datatypes.html
# http://www.r-bloggers.com/data-types-part-3-factors/
# numbers, integers (continuous)
# factors (categorical)
# sometimes the categories are numbers (ie. Grade: 1, 2, 3)
# This will confuse R, and be 'typed' as num/int
# So change it! 

plot(dat$Grade)

table(dat$Grade)

as.factor(dat$Grade)
dat$Grade

plot(dat$Grade)
plot(as.factor(dat$Grade))

dat$Grade <- as.factor(dat$Grade)

str(dat)

# Heaps of possible extra arguments
# So much customisation is possible
# Some examples 
# http://shinyapps.org/apps/RGraphCompendium/index.php#introduction
# http://www.sr.bham.ac.uk/~ajrs/R/r-gallery.html
# Some of these are quite advanced
# Something to aspire to!
# For now, some useful links;
# http://www.statmethods.net/advgraphs/parameters.html
# http://www.r-bloggers.com/how-to-plot-a-graph-in-r/

plot(dat$Grade, main = 'Grade Histogram', xlab='Grade', 
     ylab='Number of patients')
?plot

## Plotting 2 challenge
# make a table of tumor.size 
# change it to a factor in dat
# check by making a plot

# You can install packages 
# This one is full of lovely colour palettes for your plots
# Check it out! 
# http://colorbrewer2.org/
# http://www.r-bloggers.com/r-using-rcolorbrewer-to-colour-your-figures-in-r/
install.packages('RColorBrewer')

# Well done! You made it!
# Try it out on your own data =)