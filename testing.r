# Creating a Matrix 

m <- matrix(1:6, nrow = 2, ncol = 3)
m
# dimension
dim(m)
#attributes
attributes(m)
#.....................................

#creating a vector and then convert into matrix
m <- 1:10
m
dim(m) <- c(2,5)
m
#...............................................

#Binding rows and columns
x <- 1:5
y <- 10:14

rbind(x, y)
cbind(x, y)
#................................

# list are used to store different types(classes) of values.
# yaha "12" aik character hai jis ki waja se corecion apply ho jati hai or sari values
# characters ban jati hai.. is se bachne k liye hum "list" use kare gy.
v <- c(1,TRUE, "12", 4)
v
v <- list(1,TRUE, "12", 4)
v
#........................................................................................

# factors hum tab use karty hain data ki darja bandi hui ho.
