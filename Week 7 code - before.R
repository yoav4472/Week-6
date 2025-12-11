# R course for beginners
# Week 7
# Assignment by Yoav Leibovici
# ID: 212433445

Num <- 1:6  
Gender <- sample(c("male", "female"), size = 6, replace = TRUE)  
Age <- runif(6,15,40)  
Depressed <- rbinom(6, size = 1, prob = 0.5)  
df <- data.frame(Num, Gender, Age, Depressed)
write.csv(df,file = "C:/yoav python/Rcourse/df.csv")

