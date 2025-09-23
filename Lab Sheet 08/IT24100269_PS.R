
nicotine <- c(1.09, 1.74, 1.58, 2.11, 1.64, 1.79, 1.37, 1.75, 1.92, 1.47, 2.03, 
              1.86, 0.72, 2.46, 1.93, 1.63, 2.31, 1.97, 1.70, 1.90, 1.69, 
              1.88, 1.40, 2.37, 1.79, 0.85, 2.17, 1.68, 1.85, 2.08, 1.64, 
              1.75, 2.28, 1.24, 2.55, 1.51, 1.82, 1.67, 2.09, 1.69)


population_mean <- mean(nicotine)
population_sd <- sd(nicotine)


cat("Population Mean: ", population_mean, "\n")
cat("Population Standard Deviation: ", population_sd, "\n")



sample_means <- numeric(25)
sample_sds <- numeric(25)


set.seed(123)  
for (i in 1:25) {
  sample_data <- sample(nicotine, size = 6, replace = TRUE)  
  sample_means[i] <- mean(sample_data)  
  sample_sds[i] <- sd(sample_data)     
}


cat("Sample Means: ", sample_means, "\n")
cat("Sample Standard Deviations: ", sample_sds, "\n")



mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)


cat("Mean of Sample Means: ", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means: ", sd_of_sample_means, "\n")

