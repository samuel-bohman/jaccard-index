# jaccard-index

The function takes two arguments: `x` a dataframe or matrix object, and `m` the `MARGIN` argument used in the `apply` function. If your data is in long format similar to `df1` set `m = 1` to apply `sum` over the rows. If your data is in wide format similar to  `df2` set `m = 2` to apply `sum` over the columns. 