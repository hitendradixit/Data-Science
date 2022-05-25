#FACTORS
d <- c("North", "North", "North", "North", "East","East", "East",
       "East", "West", "West", "West", "West", "South", "South",
       "South", "South", "South")
print(d)
factor_data <- factor(d)
print(factor_data)

#changing the order of levels
new_order_data <- factor(factor_data,levels = c("North", "South", "East", "West"))
print(new_order_data)


#DATAFRAME

#Create the DataFrame
 emp.data <- data.frame(
          emp_id = c(1:5),
          emp_name = c("Rahul", "Ronit", "Aman", "Gary", "Ryan"),
          salary = c(1000, 800, 900, 700, 500)
          
 )
 print(emp.data)
 
 #to get the structure of dataframe
 str(emp.data)
 
#Summary of Data in DataFrame
 print(summary(emp.data))
 
 #Extract data from Datagrame or to get specific columns only
 result <- data.frame(emp.data$emp_name, emp.data$salary)
 print(result)
 
 #to get some specific rows only
 result <- emp.data[c(3,5),c(2,3)] #this will give us 3rd and 5th row with only 2nd and 3rd Column 
 print(result)
 
 #Add a column
 emp.data$dept <- c("IT", "Operations", "IT" , "HR", "Finance")
 print(emp.data)
 
 #Add a row
 
 emp.newdata <- data.frame(
          emp_id = c(6:8),
          emp_name = c("Mike", "Anuj","Ankit"),
          salary = c(1500, 1000, 900),
          dept = c("HR", "Operations", "Finance")
 )
 
 emp.finaldata <- rbind(emp.data, emp.newdata)
 print(emp.finaldata)
 
 #PACKAGES
 
 #to check available packages
 .libPaths() #this give location of the packages
 library() #to get the list of packages installed
 
 #Install a new package
 #install.packages("Package Name")
 install.packages("XML")
 
 #load a package
 #install.packages("Path of package and file will be a .zip file")
 
 #DATA RESHAPING

#Joining Columns and Rows
 city <- c("Delhi", "Lucknow", "Mumbai", "Pune", "Gurugram")
 state <- c("Delhi", "UP", "MAH", "MAH", "HAR")
 zipcode <- c(222222, 333333, 444444, 555555, 666666, 777777)
  #combie these vetors as a single address
 address <- cbind(city, state, zipcode)
 print(address)
 
 #creating a new dataframe
 new.df <- data.frame(
   city = c("Rajkot", "NOIDA"),
 state = c("GUJ", "UP"),
 zipcode = c(111111, 999999)
 )
 
 all.address <- rbind(address, new.df)
 print(all.address)
 
 
 #melting and casting
 library(MASS)
 print(ships)
 
 
 #melt the data 
 library(MASS)
 molten.ships <- melt(ships, id = c("type", "year"))
 print(molten.ships)
 
 #cast the data
 recasted.ships <- cast(molten.ships, type+year~variable, sum)
 print(recasted.ships)
 
 #READ CSV FILES
 
 #to get current working directory
 print(getwd())
 
 #to set the current working directory
 setwd("E:/New folder/Data Science/Datasets")
 
 #reading a csv file
 data <- read.csv("jbasic_info.csv")
 print(data)
 
 #Analyse the dataset
 print(ncol(data)) #to get total number of columns
 print(nrow(data)) #to get total number of rows
 
 #to get maximum and minimum age from the dataset
 print(max(data$Age))
 print(min(data$Age))
 
 #get details of person based on some condition
 ret <- subset(data, data$Age == max(data$Age))
 print(ret)
  #applying multiple conditions
 print(subset(data, data$Age >24 & data$Nationality == "Brazil"))
 
 #writing in a csv file
 newdf <- subset(data, data$Age >24 & data$Nationality == "Brazil")
 write.csv(newdf,"output.csv") #here row names will come as a number
 write.csv(newdf,"output1.csv", row.names = FALSE) #here row name will not come it'll start from id
 
 
 data <- read.csv("jbasic_info.csv")
 write.csv(data, "new.csv", row.names = FALSE)
 
 
 
 
 
 
 
 