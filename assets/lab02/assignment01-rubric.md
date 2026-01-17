# BIOL325 — Lab 02 Assignment Marking Rubric (Total = 14)

## Exercise 1 — Import the pie_crab CSV file (2 marks)
--------------------------------------------------------
- 2: `pie_crab <- read_csv("data/pie_crab.csv")` (or equivalent)
- 1: imported but path/function issues (e.g., wrong file name but easily fixable)
- 0: not imported

## Exercise 2 — Wrangle: filter + mutate + summarise (8 marks)
-----------------------------------------------------------
2A. Filters missing values correctly (2)
- 2: filters in only size >= 10 or > 9.99
- 1: filters incorrectly but intent is clear
- 0: not attempted

2B. Creates `size_cm` correctly (2)
- 2: `size_cm = size / 10` created in mutate()
- 1: conversion attempted but incorrect (e.g., wrong divisor)
- 0: not attempted

2C. Summary table correct structure and stats (4)
- 4: groups by `site` (2), summarises `mean_size_cm` (1) and `n` (1)
- 3: correct grouping but one summary missing or named incorrectly
- 2: summary attempted but grouping wrong
- 1: minimal attempt
- 0: not attempted

## Exercise 3 — Export your summary table (2 marks)
--------------------------------------------
4A. Exports summary table correctly (2)
- 2: `write_csv(pie_crab_summary, "outputs/pie_crab_summary.csv")`
- 1: exports but wrong file name/location
- 0: not attempted

## Coding practices (2 marks)
-----------------------------------------
1: clear comments and readable pipelines (one verb per line)
1: consistent naming + no absolute paths + no setwd()

0: messy, hard to read, minimal commenting
0: uses `setwd()` or absolute paths, or overwrites raw data files

Notes 
-----
- If a student’s code runs with minor typos (e.g., filename case), award partial credit as described.
- Prefer solutions that use tidyverse functions shown in the tutorial (readr, dplyr verbs, write_csv).
