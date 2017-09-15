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
