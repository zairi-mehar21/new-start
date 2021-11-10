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