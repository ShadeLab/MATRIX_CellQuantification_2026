# 01 Checkfilename

Check the name of Quantom TX image output file (.csv), it should be same as the image director name.

```{r}
# prepare your data folders for each experiment.
# check if the name of your data meets the requirement. 
# run this first for the original results (csv) from Logos!!
## check the name of Logos output file, it should be same as the folder name.

# the folder "data" under "process_quantom"

main_dir <- getwd()

subfolders <- list.dirs(main_dir, recursive = FALSE)

basename(subfolders)

for (sub_dir in subfolders) {
  sub_dir_name <- basename(sub_dir)
  
  csv_files <- list.files(sub_dir, pattern = "\\.csv$", full.names = TRUE)
  
  if (length(csv_files) == 1) {
    csv_files_name <- tools::file_path_sans_ext(basename(csv_files[1]))
    
    if (csv_files_name != sub_dir_name) {
      cat("Subfolders with unpaired file name:", sub_dir_name, "\n")
    }
  } else {
    cat("Subfolders without csv_files or have multiple csv_files:", sub_dir_name, "\n")
  }
}

```