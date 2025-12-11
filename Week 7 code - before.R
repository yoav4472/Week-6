# R course for beginners
# Week 7
# Assignment by Yoav Leibovici
# ID: 212433445

Num <- c(1, 2, 3, 4, 5, 6)
Gender <- c('male', 'male', 'male', 'male', 'female', 'female')
Age <- c(15, 23, 34, 24, 25, 36)
Depressed <- c(1, 1, 0, 1, 0, 0)
df <- data.frame(Num, Gender, Age, Depressed)
write.csv(df, file = "C:/yoav python/Rcourse/df.csv")

