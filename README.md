# Crowdfunding-ETL
Performing both an ETL process on funding dataset and a data analysis by using SQL queries

## Overview of the project
This project is to the following tasks:
  - Extract the backers’ contact information from a CSV file to create a DataFrame that will be exported as a CSV file
  - Transform and clean data
  - Create an ERD and a Table Schema and Load the Data
  - Perform a data analysis on the crowdfunding_db database
  
## Results

  - A DataFrame is created with the following columns: "backer_id", "cf_id", "name", and "email" as the screenshot below
  
  ![image](https://user-images.githubusercontent.com/110554264/192861192-fdd25817-edcb-4e97-a043-2d71315c9f51.png)
  
  - Data has been transformed via formatting, splitting, converting data types, and restructuring as below, and exported to backers.csv
  
  ![image](https://user-images.githubusercontent.com/110554264/192861469-3f615e5f-c062-4bfe-ab21-3b71fa228082.png)

  - ERD has been updated as below:
      
  ![crowdfunding_db_relationships](https://user-images.githubusercontent.com/110554264/192862147-55767798-a69c-4f9f-bf43-b8b14501d026.png)

  - The script to create table "backers" has been created in the crowdfunding_db database
  
  ![image](https://user-images.githubusercontent.com/110554264/192862083-21526ff7-e066-48fa-ab97-589535407874.png)
  
  - List of names and emails of contacts and backers is exported to csv files so that the boss can email to them to let them know about goal remains for each live campaign.


