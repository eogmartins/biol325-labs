# BIOL325 - Lab 02 Assignment (14 marks)
# Name:
# Student #:
# Date:
# Purpose: Show you can import, wrangle, and export tidy data using a 
# reproducible R script.

# Setup ----
# Install ONCE if needed (if you do, uncomment the line below and run it):
# install.packages("tidyverse")

library(tidyverse)

# The command below willcfreate an outputs folder in your working directory 
# if it doesn't exist. This folder will be used to save the CSV file you will
# create at the end of the assignment
dir.create("outputs", showWarnings = FALSE, recursive = TRUE)

# In this assignment, you will use a real data set from the US LTER Network 
# pie_crab: fiddler crab body size + temperature across salt marsh sites in the 
# summer 2016. You should have the file downloaded and uploaded to your 
# Assignments project in Posit Cloud. If not, go back to the lab instructions 
# and review the steps under Assignment # 1.

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Use good coding practices across the script (2 marks)
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Exercise 1 — Import the pie_crab CSV file (2 marks) ----
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# TASK: Write code to import data/pie_crab.csv and assign it to variable pie_crab

# TODO: REPLACE THIS LINE WITH YOUR CODE

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Exercise 2 — Wrangle: filter + mutate + summarise (8 marks) ----
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# TASKS: Write code to 
# TASK 2A (2 marks): Keep only rows where variable size is greater and equal than 10 mm
# TASK 2B (2 marks): Create a new variable size_cm = size / 10
# TASK 2C (4 marks): Create a summary table called pie_crab_summary that contains
# these two new variables summarized by site:
#     - mean_size_cm (mean of size_cm)
#     - n (sample size)
#
# HINTS: filter(), mutate(), group_by(), summarise()

crab_summary <- pie_crab |>
  # TODO: REPLACE THIS LINE WITH YOUR CODE FOR filter(...) 
  # TODO: REPLACE THIS LINE WITH YOUR CODE FOR mutate(...) 
  # TODO: REPLACE THIS LINE WITH YOUR CODE FOR group_by(...) 
  # TODO: REPLACE THIS LINE WITH YOUR CODE FOR summarise(...) 

# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Exercise 3 — Export your summary table (2 marks) ----
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# TASK: Write pie_crab_summary to outputs/pie_crab_summary.csv
# HINT: look up the help file for write_csv()
# 
# TODO: REPLACE THIS LINE WITH YOUR CODE