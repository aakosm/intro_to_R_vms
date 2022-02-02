# Introduction to R - ECPR Methods School

## Purpose of the course

The goal of this course is to provide an accessible entry into the world of R which prepares the participants to confidently approach the most common analysis tasks using R. This includes data cleaning, exploratory data analysis, creating visualizations or writing entire academic papers using RMarkdown. Unfortunately R has a reputation for a steep learning curve, but our aim is to dispel this myth and show how a range of recent developments make R not just powerful, but more accessible to newcomers. The course is designed to be accessible to those who have never used any programming language and also contains optional parts for those who have some prior experience with R or other languages.


## Key topics covered

The guiding logic of the course is to give practical knowledge for the whole data analysis workflow:

1. Importing data 
2. Data wrangling/cleaning 
3. Visualization / Exploratory analysis 
4. Analysis / Writing our own functions 
5. Reporting the results 

Reflecting on the realities of the usual research projects, the course focuses on data cleaning and getting the data in the proper shape where we can analyze and visualize it properly. The exploratory analysis and data visualization parts are heavily intertwined. We will learn how to make descriptive statistics, how to group data, and explore a given dataset. The whole course is heavily infused with visualization components and we will be learning to use the ggplot2 package to produce wonderful looking graphs (as an example, most of the Financial Times' charts are made with R in ggplot2). 

As part of learning a programming language, it is inevitable that we have to learn how to write our own functions. It is not the most intuitive part, and I will focus on making it as accessible as possible without relying on too much of the computer science/programming jargon. Alongside with this we will also look at a few statistical applications in R (t-test and OLS regression). At the end of the course we will export our results from R or even write an academic paper or report using RMarkdown. 

## Course notebooks

| Session                                 | Notebook link                                             |
|-----------------------------------------|-----------------------------------------------------------|
| Introduction to R and RStudio           | [Link](http://akosmate.com/intro_to_R_vms/01_intro/01_intro.html)                                    |
| Importing and Exploring Data            | [Link](http://akosmate.com/intro_to_R_vms/02_data_exploration/02_data_exploration.html)              |
| Data Wrangling (Part I)                 | [Link](http://akosmate.com/intro_to_R_vms/03_data_wrangling1/03_data_wrangling.html)                 |
| Data Wrangling (Part II)                | [Link](http://akosmate.com/intro_to_R_vms/04_data_wrangling2/04_data_wrangling2.html)                |
| Data visualization with `ggplot2`       | [Link](http://akosmate.com/intro_to_R_vms/05_ggplot2/05_ggplot2.html)                                |
| Writing functions and flow control in R | [Link](http://akosmate.com/intro_to_R_vms/06_functions/06_functions.html)                            |
| Doing statistics in R                   | [Link](http://akosmate.com/intro_to_R_vms/07_statistics/07_statistics.html)                          |
| Working with RMarkdown                  | [Link](http://akosmate.com/intro_to_R_vms/08_rmarkdown/08_rmarkdown.html)                            |

## For future reference

If you want to quickly look up all the packages used in the course and check which notebooks they appear then this table is for you.

|Package        |Version |Session                                                                                      |
|:--------------|:-------|:--------------------------------------------------------------------------------------------|
|broom          |0.7.10  |07_statistics; 08_rmarkdown                                                                  |
|dplyr          |1.0.7   |03_data_wrangling; 04_data_wrangling2; 05_ggplot2; 06_functions; 07_statistics; 08_rmarkdown |
|effects        |4.2-1   |07_statistics                                                                                |
|gapminder      |0.3.0   |04_data_wrangling2; 05_ggplot2; 07_statistics                                                |
|GGally         |2.1.2   |07_statistics                                                                                |
|ggforce        |0.3.3   |05_ggplot2                                                                                   |
|ggfortify      |0.4.14  |07_statistics                                                                                |
|gghighlight    |0.3.2   |05_ggplot2                                                                                   |
|ggplot2        |3.3.5   |04_data_wrangling2; 05_ggplot2; 06_functions; 07_statistics                                  |
|ggridges       |0.5.3   |05_ggplot2                                                                                   |
|ggthemes       |4.2.4   |05_ggplot2                                                                                   |
|haven          |2.4.3   |05_ggplot2; 07_statistics                                                                    |
|kableExtra     |1.3.4   |08_rmarkdown                                                                                 |
|knitr          |1.36    |08_rmarkdown                                                                                 |
|palmerpenguins |0.1.0   |05_ggplot2                                                                                   |
|plm            |2.4-3   |07_statistics                                                                                |
|purrr          |0.3.4   |06_functions                                                                                 |
|readr          |2.0.2   |03_data_wrangling; 05_ggplot2; 07_statistics                                                 |
|stargazer      |5.2.2   |08_rmarkdown                                                                                 |
|survey         |4.1-1   |07_statistics; 08_rmarkdown                                                                  |
|tidyr          |1.1.4   |03_data_wrangling                                                                            |
