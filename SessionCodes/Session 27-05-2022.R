#Reading an excel file
#install.packages("xlsx")
library("xlsx")
data <- read.xlsx("E:/Datasets/Excel/SuperStoreUS2015.xlsx", sheetIndex = 1)

#reading xml file
#install.packages("XML")
library("XML")
library("methods")
result <- xmlParse(file = "E:/New folder/Data Science/Datasets/input.xml")
print(result)

#Reading json file data
#install.packages("rjson")
library("rjson")
data <- fromJSON(file = "E:/New folder/Data Science/Datasets/input2.json")
print(data)


#Reading MySQL
install.packages("RMySQL")
myconnection = dbConnect(MySQL(), user = 'root', password = '', host = 'localhost')
#to list the tables present in the database
dbListTables(myconnection)

#to query a table
result = dbSendQuery(myconnection, "SELECT * FROM Animal")

#to fetch the result
data.frame = fetch(result, n = 5) #first five rows



#reading data and visualising it
x <- c(21, 62, 10, 53)
labels <- c("London", "India", "France", "New York")
 #give the chart a file name
png(file = "city.png")

#plot the chart
pie(x, labels)

#to save the file
dev.off()


#Creating a new chart withe extra features
png(file = "city2.png")

#Add heading and col to the charts
pie(x, labels, main = "City Piew Chart", col = rainbow(length(x)))
dev.off()

#Adding slice percentage and chart legend
png(file = "city3.png")

#Add heading and col to the charts
piepercent = round(100 * x / sum(x),1)
pie(x, labels = piepercent, main = "City Pie Chart", col = rainbow(length(x)))
legend("topright", c("London", "India", "France", "New York"),
             cex = 0.8,fill = rainbow(length(x)))
dev.off()


#Give 3D Pie Chart
library(plotrix)

x <- c(21, 62, 10, 53)
lbl<- c("London", "India", "France", "New York")
png(file = "city5.png")

#Add heading and col to the charts
pie3D(x, labels = lbl, explode = 0.1, main = "City Pie Chart", col = rainbow(length(x)))
dev.off()



