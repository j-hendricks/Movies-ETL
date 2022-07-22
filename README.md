# Movies-ETL

## Overivew

Amazing Prime would like to create an algorithm that predicts which movies will become popular. To promote collaboration and innovation, the company is sponsoring a hackathon. The task of this project is to provide the hackathon contenders with a clean table containing information on several movies produced over the last several deacdes. The Extract-Transform-Load methodoloy (ETL) was used to accomplish this task. The data was scraped from Wikipedia and Kaggle, cleaned in jupyter notebook, and loaded into a SQL database. 

## Methodology

First, the data was scraped from Wikipedia and Kaggle, which were stored in the Wikipeida, Kaggle metadata, and ratings csv files. After loading the data into dataframes, the data was cleaned in various ways, e.g. television shows were removed by removing all columns that contained a value for the "No. of episodes" column. Each time the data was cleaned, the dataframes were inspected for additional errors and were further cleaned. As another example, the money earned at the box office was in various formats - this column was standardized by parsing the data with regular expressions. This process of inspecting -> cleaning the data was repeated iteratively until the only problematic data was of such a small number that they could either be ignored or their respective row could be dropped altogether. 

Once the dataframes were completely cleaned, the Wikipedia dataframe and the Kaggle dataframe were merged. This resulting dataframe was merged with the ratings dataframe. As a result, all of the revlevant information for each movie and its rating was in a single dataframe. Using SQLalchemy, the dataframe was loaded into a sql database (PostgreSQL). At this point, all of the data was clean and in a database, and therefore was ready to be used for the hackathon.

## Conclusion
ETL is an iterative process, where the programmer must reinspect the code each time the data is succesfully cleaned. The most challening part of the project was cleaning the data, as there were multiple problems, such as formatting and null values, which had to be addressed before merging dataframes or loading them into sql. 
