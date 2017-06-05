Getting and Cleaning Data Course Project

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

1. Download the dataset if it does not already exist in the working directory
2. Load the activity and feature info
3. Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
4. Loads the activity and subject data for each dataset, and merges those columns with the dataset
5. Merges the two datasets
6. Converts the activity and subject columns into factors
7. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.


This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data",  in coursera.

Files:

CodeBook.md describes the how to use all this, variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R contains all the code to perform the analyses described in the 5 steps. 

The output of the 5th step is called TidySet2.txt, and uploaded in the course project's form.# Getting-and-Cleaning-Data-Course-Project
