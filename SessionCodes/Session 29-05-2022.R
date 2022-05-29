#-----------------BAR CHART--------------------------
H <- c(7, 12, 28, 3, 41)
lbl <- c("Mar", "Apr", "May", "Jun", "Jul")
png(file = "barchart.png")
barplot(H, names.arg = lbl, xlab = "Month", ylab = "Revenue", col = "blue",
        main = "Revenue Chart", border = "red")
dev.off()

#Stacked Chart
color <- c("green", "orange", "brown")
Month <- c("Mar", "Apr", "May", "Jun", "Jul")
region <- c("East", "West", "North")
png(file = "barchart.png")
values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
barplot(values, main = "Total Revenue", names.arg = Month, xlab = "month", ylab = "Revenue", col = color)
legend("topleft", region, cex = 1.3, fill = colors)
dev.off()
  

#--------------BOX PLOT-------------------------
#data set "mtcars" available in the R environment
input <- mtcars[,c('mpg','cyl')]
print(head(input))

#creating a box plot
png(file = "boxplot.png")
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab= "Miles Per Gallon", main = "Mileage Data")
dev.off()


#Boxplot with notch
png(file = "boxplot1.png")
boxplot(mpg ~ cyl, 
        data = mtcars, 
        xlab = "Number of Cylinders", 
        ylab= "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green", "orange", "purple"),
        names = c("High", "Medium", "Low")
)
dev.off()


#-------------------Histogram------------------------
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,
     xlab = "Weight",
     col = "yellow",
     border = "red")
#using xlim and ylim here 
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
png(file = "histogram.png")
hist(v,
     xlab = "Weight",
     col = "yellow",
     border = "red",
     xlim = c(0,40),
     ylim = c(0,5),
     
     )
dev.off()

#-------------------------Line Chart-----------------------
v <- c(7,12,28,3,41)
plot(v, type = "p")
plot(v, type = "l")
plot(v, type = "o")
#"p" will draw only points, "l" will only draw line and "o" will draw both points and line

#Plotting chart with Title and lables
v <- c(7, 12, 28, 3, 41)
png(file = "rainfall_chart.jpg")
plot(v,
     type = "o",
     col = "red",
     xlab = "Month",
     ylab = "Rain Fall",
     main = "Rain Fall chart"
     )

#Multiple Line charts
v <- c(7, 12, 28, 3, 41)
t <- c(14, 7, 6, 19, 3)
plot(v, 
     type = "o",
     col = "red",
     xlab = "Month",
     ylab = "Rain fall",
     main = "Rain Fall Chart"
     )
lines(t, type = "o", col = "blue")


#--------------------Scatter Plot--------------------

#Reading data from mtcars dataset
input <- mtcars[,c('wt', 'mpg')]
print(head(input))

#Plotting Scatter Plot

plot(x = input$wt, y = input$mpg,
     xlab = "Weight",
     ylab = "Mileage",
     xlim = c(2.5, 5),
     ylim = c(15, 30),
     col = "red",
     main = "Weight VS Mileage"
     )

#ScatterPlot Matrices
pairs(~wt+mpg+disp+cyl, data = mtcars,
      main = "ScatterPlot Matrix")



