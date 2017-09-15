# Example data from https://stats.stackexchange.com/questions/176613/jaccard-similarity-in-r
df1 <- data.frame(
  IDS = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
  CESD = c(1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1))

df2 <- data.frame(Q1 = c(1L, 0L), Q2 = c(0L, 1L), Q3 = c(0L, 1L), Q4 = c(1L, 0L), Q5 = c(1L, 1L), Q6 = c(0L, 0L))

jaccard <- function(x, m) {
  if (m == 1 | m == 2) {
    M_00 <- apply(x, m, sum) == 0
    M_11 <- apply(x, m, sum) == 2
    if (m == 1) {
      x <- x[!M_00, ]
      j_index <- sum(M_11) / nrow(x)
    } else {
      x <- x[, !M_00]
      j_index <- sum(M_11) / length(x)
    }
    j_dist <- 1 - j_index
    return(c(j_index = j_index, j_dist = j_dist))
  } else break
}

# jaccard(df1, 1)
# jaccard(df2, 2)
