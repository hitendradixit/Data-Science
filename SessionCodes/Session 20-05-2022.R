> var1 <- c(1, 3, 4)
> print(var1)
[1] 1 3 4
> print(class(var1))
[1] "numeric"
> var2 <- c(2.5, 6.7, 7.8, 8)
> print(var2)
[1] 2.5 6.7 7.8 8.0
> var2 <- c(2.5, 6.7, 7.8, 8)
> var2 <- c(2.5, 6.7, 7.8, 8, "Mango")
> print(var2)
[1] "2.5"   "6.7"   "7.8"   "8"     "Mango"
> var3 <- list(1, 4, 5, 6)
> print(list3)
Error in print(list3) : object 'list3' not found
> print(var3)
[[1]]
[1] 1

[[2]]
[1] 4

[[3]]
[1] 5

[[4]]
[1] 6

> var3 <- list(1, 4, 5, 6, c(23, 5, 6))
> print(var3)
[[1]]
[1] 1

[[2]]
[1] 4

[[3]]
[1] 5

[[4]]
[1] 6

[[5]]
[1] 23  5  6

> Mat1 = matrix( c(1, 4, 5, 6, 7, 8, 9, 10, 11), nrow = 3, ncol = 3, byrow = TRUE )
> Mat2 = matrix( c(1, 4, 5, 6, 7, 8, 9, 10, 11), nrow = 3, ncol = 3, byrow = FALSE )
> print(Mat1)
[,1] [,2] [,3]
[1,]    1    4    5
[2,]    6    7    8
[3,]    9   10   11
> print(Mat2)
[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11
> a <- array(c(1, 4, 5, 6, 7, 8, 9, 10, 11) , dim = c(3, 3, 2))
> print(a)
, , 1

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

, , 2

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

> a <- array(c(1, 4, 5, 6, 7, 8, 9, 10, 11) , dim = c(3, 3, 4))
> print(a)
, , 1

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

, , 2

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

, , 3

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

, , 4

[,1] [,2] [,3]
[1,]    1    6    9
[2,]    4    7   10
[3,]    5    8   11

> apple_color <- c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
> print(apple_color)
[1] "green"  "green"  "yellow" "red"    "red"    "red"    "green" 
> factor_object <- factor(apple_color)
> print(factor_object)
[1] green  green  yellow red    red    red    green 
Levels: green red yellow
> print(nlevels(factor_object))
[1] 3
> df <- data.frame(
  +     name = c("Adam", "Rahul", "Ronit"),
  +     age = c(23, 24, 25)
  + )
> print(df)
name age
1  Adam  23
2 Rahul  24
3 Ronit  25
> c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
[1] "green"  "green"  "yellow" "red"    "red"    "red"    "green" 
> var1 = c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
> print(var1)
[1] "green"  "green"  "yellow" "red"    "red"    "red"    "green" 
> cat("Var1 is ", var1 , "\n")
Var1 is  green green yellow red red red green 
> cat("Var1 is ", var1.1 , "\n")
Error in cat("Var1 is ", var1.1, "\n") : object 'var1.1' not found
> var1 = c('green', 'green', 'yellow', 'red', 'red', 'red', 'green')
> cat(var1.1)
Error in cat(var1.1) : object 'var1.1' not found
> cat(var1)
green green yellow red red red green
> var = "Hello"
> print(class(var))
[1] "character"
> var = 2.5
> print(class(var))
[1] "numeric"
> print(ls())
[1] "a"             "apple_color"   "df"            "factor_object" "Mat1"         
[6] "Mat2"          "var"           "var1"          "var2"          "var3"         
> rm(factor_object)
> print(ls())
[1] "a"           "apple_color" "df"          "Mat1"        "Mat2"        "var"        
[7] "var1"        "var2"        "var3"       
> print(factor_object)
Error in print(factor_object) : object 'factor_object' not found
> v = c(2, 4, 5 )
> t = c(2, 2, 2 )
> print(v ^ t)
[1]  4 16 25
> print(v != t)
[1] FALSE  TRUE  TRUE
> b = 20
> if(is.integer(b)){
  +     print("b is an integer")
  + }
> b = 20
> if(is.integer(b)){print("b is an integer")}
> 
  > 
  > if(is.integer(b)){
    +     +     print("b is an integer")
    +     + }
Error: unexpected '}' in:
  "    +     print("b is an integer")
    + }"
> if(is.integer(b)){
  +          print("b is an integer")
  +      }
> x <- switch(
  +     3, 
  +     "Hello",
  +     "How"<
    + )
Error: unexpected ')' in:
  "    "How"<
)"
> x <- switch(
  +     3,
  +     4,
  +     56,
  +     "hello"
  + )
> print(x)
[1] "hello"
> v = c("Hello", "How")
> cnt = 2
> repeat{
  +     print(v)
  +     cnt = cnt + 1
  +     if(cnt > 5){
    +         break
    +     }
  + }
[1] "Hello" "How"  
[1] "Hello" "How"  
[1] "Hello" "How"  
[1] "Hello" "How"  
> repeat{
  +         print(v)
  +         cnt = cnt + 1
  +         if(cnt >= 5){
    +                 break
    +          }
  +      }
[1] "Hello" "How"  
> v = c("Hello", "How")
> cnt = 2
> while (cnt < 5){
  +     print(v)
  +     cnt = cnt + 1
  + }
[1] "Hello" "How"  
[1] "Hello" "How"  
[1] "Hello" "How"  
> print(seq(32, 44))
[1] 32 33 34 35 36 37 38 39 40 41 42 43 44
> print(sum( 1: 10\))
Error: unexpected '\\' in "print(sum( 1: 10\"
> print(sum( 1: 10))
[1] 55
> new.function <- function(a){
+     print("Hello you are in function")
+ }
> new.function(5)
[1] "Hello you are in function"
> new.function <- function(){
+         print("Hello you are in function")
+      }
> new.function()
[1] "Hello you are in function"
> new.function <- function(a, b){
+         print("Hello you are in function")
+      }
> new.function <- function(a){
+     +     print("Hello you are in function")
+     + }
Error: unexpected '}' in:
"    +     print("Hello you are in function")
+ }"
> + }
Error: unexpected '}' in "+ }"
> new.function <- function(a, b){
+          print("Hello you are in function")
+     print(a + b)
+      }
> new.function(12, 13)
[1] "Hello you are in function"
[1] 25