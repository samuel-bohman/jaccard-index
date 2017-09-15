# Jaccard Index

The function takes two arguments: `x` a dataframe or matrix object, and `m` the `MARGIN` argument used in the `apply` function. If your data is in long format similar to `df1` set `m = 1` to apply `sum` over the rows. If your data is in wide format similar to  `df2` set `m = 2` to apply `sum` over the columns. 

## Examples

Data in long format: 

```r
df1 <- data.frame(
  IDS = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 0), 
  CESD = c(1, 1, 1, 0, 1, 1, 0, 0, 0, 0))
head(df1)
#   IDS CESD
# 1   1    1
# 2   1    1
# 3   1    1
# 4   1    0
# 5   1    1
# 6   1    1

jaccard(df1, 1)
#   j_index    j_dist 
# 0.5555556 0.4444444 
```

Data in wide format: 

```r
df2 <- data.frame(Q1 = c(1L, 0L), Q2 = c(0L, 1L), Q3 = c(0L, 1L), Q4 = c(1L, 0L), Q5 = c(1L, 1L), Q6 = c(0L, 0L))
df2
#   Q1 Q2 Q3 Q4 Q5 Q6
# 1  1  0  0  1  1  0
# 2  0  1  1  0  1  0

jaccard(df2, 2)
# j_index  j_dist 
#     0.2     0.8 
```

Logical vectors work too: 

```r
df3 <- data.frame(A = c(TRUE, TRUE, TRUE), B = c(TRUE, TRUE, FALSE))
df3
#      A     B
# 1 TRUE  TRUE
# 2 TRUE  TRUE
# 3 TRUE FALSE

jaccard(df3, 1)
#   j_index    j_dist 
# 0.6666667 0.3333333 
```
