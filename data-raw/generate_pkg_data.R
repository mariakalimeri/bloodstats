# Create a data frame with random values
#
library(tidyverse)

# Set random seed to make things reproducible
set.seed(34)

# Create data frame
df_example <-
  tibble(id = rep(paste0("id_", seq(1, 50)), 2),
         biofluid = rep(c("blood", "urine"), each = 50),
         males = sample(1:100, size = 100),
         females = sample(1000:1200, size = 100))

usethis::use_data(df_example, overwrite = TRUE)
