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
# factors k back-end py numeric values hoti hain jab k unki output as a label show hoti hai.
# 
f <- factor(c("punjab", "kpk", "sindh", "kpk", "kpk"))
f
unclass(f)

# practice
# values ko sequence k sath show karwane k liye hum level define karty hain.

w <- factor(c("monday","tuesday","thursday","sunday","friday","wednesday","saturday"), 
            levels= c("monday","tuesday","wednesday","thursday","friday","saturday","sunday"))
w

#.............................................................
# NA and NaN values

v <- c(1,2,3,NA,NaN, 4, NA)
is.na(v)
is.nan(v)
#.............................................................
# Data Frames (used for tabular form)

u <- data.frame(day = 1:4, rain = c(T,F,F,T))
u
nrow(u)
ncol(u)
row.names(u) <- c("a","b","c","d")
u
#.............................................................
# Object Name ( used for assigning to column name)

w <- 1:3 
names(w) <- c("col_a", "col_b", "col_c")
w
names(w)

# list example  (in list we can create multiple data type  )
z <- list(a=1:5, b="ID", c=c("First Name", "Last Name"))
z
names(z)
z$a

# matrix example
m <- matrix(1:4, nrow = 2, ncol = 2)
m
dimnames(m) <- list(c("R1","R2"), c("C1","C2"))  # we are assigning name to columns and rows
m
dimnames(m)
#............................................................
# Sub-setting of vectors

s <- c("a","b","c","d","e","a")
s
s[2]
s[1:4]
s[s > "a"]
s[s > "c"]
s[s > "e"]

u <- s > "a"
u
s[u]
s

# sub-setting of matrix

sb <- matrix(1:6, 2,3)
sb
sb[1,2]
sb[2,3]

sb[1,]  # indices can also be missing.
sb[,2]

# matrix mein se jab hum data return karty hain to vector form mein  hota hai.
# agr hum matrix ka return(output) matrix ki hi form mein dekhna chahty hain 
# to hum aik variable add krty hain.

sb[1,2, drop=FALSE]
sb[1,, drop=FALSE]


# Sub-setting list
r <- list(weekdays = 1:4, rain_prob = 0.6)
r
r[[1]]
r[["rain_prob"]]
r["rain_prob"]

r <- list(weekdays = 1:4, rain_prob = 0.6, item = "umbrella")
r[c(1,3)]

r <- list(weekdays = 1:4, rain_prob = 0.6, item = "umbrella")

name <- "weekdays"
name
r[[name]]

r$weekdays    # element 'weekdays' does exist.
r$name        # element 'name' doesn't exist.

# sub-setting Nested elements of a list

x <- list(a=list(10,12,14), b=c(3.14,4.13))
x
x[[c(1,3)]]   # one indicate first list and third indicate index value

x[[1]][[3]]   # here is the second method.

x[[c(2,1)]]   # second list and first value.

#.........................................................................
# Removing NA values.

n<-c(1,2,3,NA,4,NA,5)
bad <- is.na(n)  #'is.na()' function check krta hai k kiya 'n' aik NA value hai...
n[!bad]   # '!' ye sign TRUE value ko False and false ko true kar deta hai.

bad
!bad

o<-c(3,4,5,NA,6,NA,7)
p<-c("a","b","c",NA,"d","e",NA)
good<-complete.cases(o,p) # 'complete.cases' mein hum aik se zyada argument pass kar sakty hain.
                          # 'is.na' mein sird aik hi argument pass ho ga.
good
o[good]
p[good]
