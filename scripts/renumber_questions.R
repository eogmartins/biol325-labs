# this function will renumber questions if detects a change in the question files
# Ideally it should test only if files in each question do not have consecutive 
# numbers starting at 1. This is work to do later.

renumber_questions <- function(bank_dir) {
  
  if (file.exists(file.path(bank_dir, "fingerprint.csv"))) {
    fingerprint <- read_csv(file.path(bank_dir, "fingerprint.csv"))
  } else {
    fingerprint <- file.info(list.files(bank_dir, pattern = "\\.Rmd$", 
                                        full.names = TRUE, ignore.case = TRUE))
    
    write_csv(fingerprint, file.path(bank_dir, "fingerprint.csv"))
  }
  
  check_fingerprint <- file.info(list.files(bank_dir, pattern = "\\.Rmd$", 
                                            full.names = TRUE, ignore.case = TRUE))
  
  if (!identical(fingerprint, check_fingerprint)) {
    files <- list.files(bank_dir, pattern = "\\.Rmd$", full.names = TRUE)
    
    fnames <- basename(files)
    
    type <- sub("_\\d+\\.Rmd$", "", fnames)
    
    # Split files by type
    files_by_type <- split(files, type)
    
    # Renumber within each type
    for (t in names(files_by_type)) {
      
      f <- files_by_type[[t]]
      
      f <- f[order(f)]
      
      new_names <- sprintf("%s_%02d.Rmd", t, seq_along(f))
      
      file.rename(from = f, to = file.path(bank_dir, new_names))
      
      new_fingerprint <- file.info(list.files(bank_dir, pattern="\\.Rmd$", 
                                              full.names=TRUE, ignore.case=TRUE))
      
      write_csv(new_fingerprint, file.path(bank_dir, "fingerprint.csv"))
    }
  }
}