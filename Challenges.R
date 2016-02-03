###Questions

##Assigning variables

years <- 34
height <- 190
years <- years+12
height <- height*3
#What will this show?
years 
height
"years" "height" # a) 
34 190 # b) 
46 570 # c) 
102 202 # d) 

##Subsetting

#How do I select the ages (hint: column 2) of the first 10 patients?
dat[1,10] # a)
dat[1:10,2] # b)
dat[2,1:10] # c)
dat[1:10] # d)

##Subsetting 2

#Find the mean ages (hint: column 2) of all patients?
mean(dat[Age]) # a)
mean(dat[,2]) # b)
mean(dat$Age) # c)
mean(dat[,'Age']) # d)

##Plotting 

#Plot RFS.months(column 10) against OS.months(column 13)
#Use any subsetting method you'd like!
#Show your neighbour!
#Put up a green sticky when you're done!

##Plotting 2

#Plot a histogram of OS.months(column 13)

##Tables

#How many tumours are Grade 1, 2, and 3?
75, 101, 119 # a)
1, 2, 3 # b)
114, 92, 89 # c)
67, 142, 86 # d)

