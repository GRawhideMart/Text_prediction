## Script to answer Quiz 1.
## I hereby DO NOT CONDONE CHEATING.
## To use only for confrontation.

## Question 1: the 'en_US.blogs.txt' file is how many megabytes?
print("Question 1: the 'en_US.blogs.txt' file is how many megabytes?")
print(paste("The file is",as.character(file.size('final/en_US/en_US.blogs.txt') / 1e6), "MB."))

## Question 2: The 'en_US.twitter.txt' has how many lines of text?
print("=============================================================")
print("Question 2: The 'en_US.twitter.txt' has how many lines of text?")
print(paste("The file has",as.character(length(readLines('final/en_US/en_US.twitter.txt', warn=FALSE))), "lines."))

## Question 3: What is the length of the longest line seen in any of the three en_US datasets?
print("=============================================================")
print("Question 3: What is the length of the longest line seen in any of the three en_US datasets?")
print(paste('en_US.twitter.txt:',as.character(max(nchar(readLines('final/en_US/en_US.twitter.txt',warn = FALSE))))))
print(paste('en_US.news.txt:',as.character(max(nchar(readLines('final/en_US/en_US.news.txt',warn = FALSE))))))
print(paste('en_US.blogs.txt:',as.character(max(nchar(readLines('final/en_US/en_US.blogs.txt',warn = FALSE))))))

## Question 4: In the en_US twitter data set, if you divide the number of lines where the word "love" (all lowercase) occurs by the number of lines the word "hate" (all lowercase) occurs, about what do you get?
print("=============================================================")
print('Question 4: In the en_US twitter data set, if you divide the number of lines where the word "love" (all lowercase) occurs by the number of lines the word "hate" (all lowercase) occurs, about what do you get?')
print(paste('The ratio is',as.character(length(grep('love',readLines('final/en_US/en_US.twitter.txt',warn=F))) / length(grep('hate',readLines('final/en_US/en_US.twitter.txt',warn=F))))))

## Question 5: The one tweet in the en_US twitter data set that matches the word "biostats" says what?
print("=============================================================")
print('Question 5: The one tweet in the en_US twitter data set that matches the word "biostats" says what?')
print(paste('The tweet says: "',grep('biostat', readLines('final/en_US/en_US.twitter.txt',warn=F), value = TRUE)[1],'"'))

## Question 6: How many tweets have the exact characters "A computer once beat me at chess, but it was no match for me at kickboxing". (I.e. the line matches those characters exactly.)
print("=============================================================")
print('Question 6: How many tweets have the exact characters "A computer once beat me at chess, but it was no match for me at kickboxing". (I.e. the line matches those characters exactly.)')
print(length(grep("A computer once beat me at chess, but it was no match for me at kickboxing",readLines('final/en_US/en_US.twitter.txt', warn =F))))
