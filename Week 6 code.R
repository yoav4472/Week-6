# R course for beginners
# Week 6
# Assignment by Yoav Leibovici
# ID: 212433445

#### Part A ####

file_list <- dir("C:/yoavR/stroop_data", full.names = TRUE)

all_data <- data.frame()
for(f in file_list){
  current <- read.csv(f)
  all_data <- rbind(all_data, current)
}

#### A2 ####
n_subjects <- length(unique(all_data$subject))
n_conditions <- length(unique(all_data$condition))

n_subjects
n_conditions

#### A3 ####
na_count <- sum(is.na(all_data$rt))
na_prop  <- mean(is.na(all_data$rt))

na_count
na_prop

#### A4 ####
hist(all_data$rt[all_data$condition == "congruent"])
hist(all_data$rt[all_data$condition == "incongruent"])

#### Part B ####
outliers <- function(rt_vec){
  m <- mean(rt_vec, na.rm = TRUE)
  s <- sd(rt_vec, na.rm = TRUE)
  rt_vec > m + 2 * s
}

#### B2 ####
subjects <- unique(all_data$subject)
outlier_flag <- logical(nrow(all_data))

for(s in subjects){
  idx <- which(all_data$subject == s)
  rt_sub <- all_data$rt[idx]
  outlier_sub <- outliers(rt_sub)
  outlier_flag[idx] <- outlier_sub
}

all_data$outlier <- outlier_flag

#### Part C ####
outliers_per_subject <- tapply(all_data$outlier, all_data$subject, sum, na.rm = TRUE)
outliers_per_subject

#### C2 ####
clean_data <- all_data[all_data$outlier == FALSE, ]

hist(clean_data$rt[clean_data$condition == "congruent"])
hist(clean_data$rt[clean_data$condition == "incongruent"])
