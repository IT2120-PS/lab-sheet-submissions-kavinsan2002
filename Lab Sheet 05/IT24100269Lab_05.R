getwd()
setwd("C:\\Users\\it24100269\\Desktop\\It24100269")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE,sep = ",")
Delivery_Times
print(Delivery_Times)

names(Delivery_Times)<-c("X1")
fix(Delivery_Times)

attach(Delivery_Times)

hist(X1,main = "Histogram of delivery Times")

histrogam <-hist(X1,main="Histogram of delivery Times",breaks = seq(20,70,length = 10),right= FALSE)
     

hist_data <- hist(X1, breaks = breaks, plot = FALSE, right = FALSE)
cum_freq <- cumsum(hist_data$counts)

ogive_x <- breaks
ogive_y <- c(0, cum_freq)

plot(ogive_x, ogive_y, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     col = "red")
