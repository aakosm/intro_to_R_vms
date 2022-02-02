# R packages used during the course

library(dplyr)
library(stringr)
library(tibble)
library(purrr)
library(tidyr)

notebooks <- "E:/Dropbox/teaching/ECPR/intro_to_R_vms"


notebook_filepaths <- list.files(path = notebooks, pattern = "^.*\\.(R|Rmd|rmd|r)$", recursive = TRUE, include.dirs = TRUE, full.names = TRUE)


# full path of each r script
path_df <-  enframe(notebook_filepaths, name = "nr", value = "paths") %>% 
  filter(!str_detect(paths, "submissions|admin|guides|used|cc|ex")) %>% 
  mutate(nr = row_number())

# helper function for patterns
# file: path to a R or Rmd source file
# pattern: regex to match 
get_library <- function(file, pattern = "library\\([a-zA-Z0-9_.]+\\)") {
  library_temp <- str_extract_all(paste(readLines(file), collapse = " "), pattern = pattern)
  library_temp <- enframe(unlist(library_temp), name = "n", value = "packages") %>% 
    mutate(
      packages = str_extract(packages, "(?<=\\().*(?=\\))"),
      session = nth(unlist(str_split(file, pattern = "/")), -1),
      session = str_extract(session, ".+?(?=\\.)")
      )
  
  return(library_temp)
}


# check library calls for each notebook
packages_used <- lapply(path_df$paths, function(x) get_library(x))

# all installed package
all_pkg <- as_tibble(installed.packages()) %>% 
  select(packages = Package, Version)

# the packages used during the course
packages_df <- bind_rows(packages_used) %>% 
  select(packages, session) %>% 
  distinct() %>% 
  arrange(packages) %>% 
  group_by(packages) %>% 
  mutate(session_used = str_c(session, collapse = "; ")) %>% 
  ungroup() %>% 
  select(packages, session_used) %>% 
  distinct() %>% 
  left_join(all_pkg) %>% 
  drop_na() %>% 
  select(Package = packages, Version, Session = session_used)


# generate markdown table
knitr::kable(packages_df, "pipe")



