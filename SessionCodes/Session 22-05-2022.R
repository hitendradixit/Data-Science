#-------------------------------Strings----------------------------

#Declare a string
a <- 'Hello How are you'
print(a)

b <- "Hello How are you?"
print(b)

c <- "Hello ' How"
print(c)

#Concatenate a String

a <- "Hello"
b <- "How"
c <- "are you"
print(paste(a, b, c, sep = "+"))

#Formatting numbers and strings

result <- format(24.0123456789, digits = 5)
print(result)
#format converts all the values contained inside it to be character
r <- format(6)
print(class(r))

#count number of characters
r <- "I like to code in python"
print(nchar(r))

#convert to upper case and lower case 
r <- toupper("Changing to upper")
print(r)
r <- tolower("Changing to lower")
print(r)


#substring
print(substring("Changing to upper",1,5))

#capitalize the first word
r <- "changing to upper"
print(paste(toupper(substr(r,1,1)),substr(r,2,nchar(r)), sep = ""))

#--------------------------Vectors--------------------------------

#Single element vector

print(30)

#Multiple vector with same datatype
v <- 5:13
print(v)

v <- seq(5, 9, by = 0.5)
print(v)

#Multiple vector with different datatype

v <- c("apple", "mango", 2, TRUE) #everything will be converted to string
print(v)

#accessing the elements of vector
v <- c("apple", "mango", 2, TRUE)
print(v[c(2, 3)])
print(v[c(-2)])

#vector manipulation
v1 <- c(3, 4, 5, 6, 7, 8, 9)
v2 <- c(1, 3, 4, 5, 6, 8, 10)
add.result <- v1 + v2 #operation happens element to element
print(add.result)

#vector element recycling
v1 <- c(3, 4, 5, 6, 7, 8, 9)
v2 <- c(1, 3) #if elements are less than they are needed to added up v2 will repeat its element
add.result <- v1 + v2 #operation happens element to element
print(v2)
print(add.result)

#vector Sorting
v <- c(23, 3, 4, 45, 21, 34, 9, -19)
print(sort(v))

#---------------------------Lists--------------------------------

#creating a list
list_data <- list("Red", "Green", "Orange", "Blue",2)
print(list_data)


#Accessing the list elements
print(list_data[1])

#Manipulate the list
list_data[2] <- "White"
print(list_data)
print(list_data[2])

#Merging the list
list1 <- list(1, 2, 3)
list2 <- list("Apple", "Mango", "Kiwi")
merged.list <- c(list1, list2)
print(merged.list)

#convert list to vector
v1 <- unlist(merged.list)
print(v1)

#------------------------------Matrix--------------------------------

#creating a Matrix

v <- matrix( c(1:12), nrow = 4, ncol = 3, byrow = TRUE)
print(v)

#Access the elements of Matrix
print(v[2,]) #gives 2nd row
print(v[2,2]) #gives 2nd element of 2nd row

#Matrix Computation
v1 <- matrix( c(1:12), nrow = 4, ncol = 3, byrow = TRUE)
v2 <- matrix( c(13:24), nrow = 4, ncol = 3, byrow = TRUE)
result <- v1 + v2
print(result)

#-------------------------Array-------------------------------

#create an array
arr <- array(c(2,3,4,5,6,7,8,9,10,1,11,12), dim = c(4, 3, 1))
print(arr)

#giving row name and column names
v <- c(2,3,4,5,6,7,8,9,10,1,11,12)
col.names <- c("COL1", "COL2", "COL3")
row.names <- c("ROW1", "ROW2", "ROW3", "ROW4")
mat.names <- c("MAT1", "MAT2")
result <- array(c(v), dim = c(4,3,2), dimnames = list(row.names, col.names, mat.names))
print(result)
