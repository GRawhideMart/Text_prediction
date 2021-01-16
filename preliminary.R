## This script does all the preliminary operations for prepping the field for the project.
## One can specify the folder in which to do it, by default it gets the current one.

preliminary_operations <- function(wd = getwd()) {
  if(!dir.exists(wd)){
    dir.create(wd, recursive = TRUE)
  }
  setwd(wd)
  # Download dataset, if not already present in the folder
  if(!file.exists('full_dataset.zip')) {
    print('Downloading Dataset. Be patient.')
    download.file('https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip', destfile = "full_dataset.zip", method = 'curl')
    print('Done')
  }
  
  # Unzip it if not already present.
  if(!dir.exists('final')){
    print('Unzipping')
    unzip(zipfile = 'full_dataset.zip')
    print('Done')
  }
  
  # Create a gitignore for version control, delete if not any.
  if(!file.exists('.gitignore')){
    file.create('.gitignore')
  }
  
  # Add the folder to gitignore. The datasets are huge, it's not a good idea to commit them on GitHub.
  write('final', file='.gitignore', append=TRUE)
}
