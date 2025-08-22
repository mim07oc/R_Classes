# =================================================== #
# Data Structures
# Author(s): Maharunnasha Mim
# Date: Class 02
# =================================================== #



#Type- 1 : Vector ------------------------------------------------------------------

##How to create vector data

x1 <- c(10, 15, 20, 21, 24, 13, 20, 19)
is.vector(x1) # to check if it is vector or not

## Random number generator

x2 <- sample(1:100, 10)
x2
summary(x2)

## Sequence generator

x3 <- seq(from = 1, to = 11, by = 2)
x3

x4 <- seq(from = 1, to = 11, length.out = 6)
x4

seq_len(10)

##Indexing

x1 > 19
x1[3] #picking the 3rd element
length(x1) # length of x1 vector
x1[c(FALSE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)] # will only show the true values
x1[c(3,4,5,7)] # nth element from x1
x1[x1 > 19] # conditional indexing, will show thw element greater than 19
x1[x1 > 14 & x1 < 20] # conditional indexing
which(x1 > 14 & x1 < 20) 
x1[which(x1 > 14 & x1 < 20)]

##Operation

x1 <- c(10, 15, 20, 21, 24, 13, 20, 19)
x1
x5 <- seq(40, 47)
x5


x1 + x5
x1 - x5
x1 * x5
x1/x5

# Type -2 : List --------------------------------------------------------------------

ls1 <- list(c(1,2,3), c(24,23,19), c("F","M","F"))
ls1
ls2 <- list(id = c(1,2,3), age = c(24, 23, 19), gender = c("F","M","F"))
ls2




# Type- 3: Matrix ------------------------------------------------------------------
## Creating matrix
mat1 <- matrix(c(1, 2, 3, 4), ncol = 2, nrow = 2, byrow = TRUE)
mat1
is.matrix(mat1)

is.matrix(matrix(c(0,10,2), ncol = 3))
is.matrix(c(0,10,2))

# Indexing
mat2 <- matrix(seq(1,15), nrow = 3, ncol = 5, byrow = TRUE)
mat2 
mat3 <- matrix(seq(21,35), nrow = 3, ncol = 5, byrow = TRUE)
mat3

mat2[,] # full matrix
mat2[2,5] # 2nd row 5th column
mat2[,4] # 4th column
mat2[3,] # 3 row
mat2[1,2] <- 0 # replace element
mat2

## Adding element to row and column
rbind(mat3, c(2,5,7,8,9)) # add element to row 
cbind(mat3, c(4,6,7)) # add element to column

t(mat3) # transpose of matrix

##Operation

mat2 + mat3
mat3 - mat2
mat2 * mat3



#Type-4: Array -------------------------------------------------------------------
##Creating Array
arr1 <- array(c(1:12), c(2,3,2))
arr1

v1 <- c(4,5,67,89)
v2 <- c(20,30,40,50,60,70,80,90)
arr2 <- array(c(v1,v2), dim = c(2,3,3))
arr2

r_names <- c('r1','r2')
c_names <- c('c1','c2','c3')
mat_names <- c('mat1','mat2','mat3')
arr3 <- array(c(v1,v2), dim = c(2,3,3), dimnames = list(r_names,c_names, mat_names))
arr3


#Type - 5 : Data Frame --------------------------------------------------------------
##Creat_Dataframe  
df1 <- data.frame(id = c(1,2,3, 4), 
                  age = c(24, 23, 19, 10), 
                  gender = c("F","M","F", "F"),  
                  stringsAsFactors = TRUE) #When stringsAsFactors set to TRUE (default), character vectors are converted to factors.
df1

emp_data <- data.frame(emp_id = seq(1,5),
                       emp_names = c('Osman','Mira','Mainul','Miraj','Ador'),
                       salary <- c(500, 300,600,789,968,4576),
                       stringsAsFactors = TRUE)

emp_data

## subsetting
df1
df1$id
df1$age
df1$gender

## row and column names
emp_data
rownames(emp_data)
colnames(emp_data)

## add new column

emp_data$height <- c(5, 6, 5.5, 5.2, 5.4)
emp_data
#or
y <- c('Dhaka','Barishal','Bogra','Rajshahi')
cbind(df1, Address = y)

#summary
summary(df1)

