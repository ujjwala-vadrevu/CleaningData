## Synopsis

This is the course project for the Coursera Course Getting and Cleaning Data.

## Steps followed in the cleaning process

. loading the column names from featuers.txt
. merging training and test datasets
. subsetting the column names containing the strings mean or Mean or std from the fullData data frame
. adding activity Names corresponding to the activityId
. processing the col names to make them accurate and descriptive
. creating independent dataset with averages uing dplyr package

## Choosing Columns

Since the premise of the experiment and the experiment itself is out of the scope of understanding for the current course, only the columns that contain the words "Mean" or "mean" or "std" were chosen for the final output.

## Dataset type

A long dataset was chosen with 180 rows (30 subjects * 6 activities) and 88 columns (33 std dev measure + 53 mean measures + 2 identifiers)

## CodeBook Creation

For the CodeBook creation, the R library memisc was used

## Refereces

For technical assistance : www.stackoverflow.com
For the purpose of understanding the requirements of the assignment : course forums. Specifics below.
. https://class.coursera.org/getdata-031/forum/thread?thread_id=28
. https://class.coursera.org/getdata-031/forum/thread?thread_id=130
. https://class.coursera.org/getdata-031/forum/thread?thread_id=130#comment-408
For preparation of this read me file : https://gist.github.com/jxson/1784669
For codebook generation : https://cran.r-project.org/web/packages/memisc/memisc.pdf
https://github.com/vrajs5/Getting-and-Cleaning-Data/blob/master/CodeBook-Generation.R


