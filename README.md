# Crowdfunding_ETL

## UCI Data Analytics Bootcamp - Project 2

Due Date : Thursday, January 12, 2023

# **Group Members**

Chika Okam

David Campos

Jonathan Rico

Lissette Escobedo

Patricia Roa

Robert Hascall

Roy Jiang

Vincent Passanisi


# **Introduction**

For this project, we were presented with two different sets of data: crowdfunding information and contacts information in the form of csv files.
The challenge was to use the extract, transform, and load process to refine, restructure, and consolidate the information based on their relationship to each other.

# **Files**

* **README.md** file with information about the project
* **Starter_Files** folder - contains the following project files for Group 4.

* **ETL_Mini_Project_Final_Group4.ipynb** - Completed notebook file for group 4. Contains solutions for both option 1 and 2.
* **crowdfunding_db_schema.sql** - SQL file with table schema and query to demonstrate all tables created coreectly with primary and foreign keys.
* **ETL_ERD_Group_4.png** - image file of ERD table schema
* **Resources** folder contains the provided Excel Files
    * *contacts.xlsx*
    * *crowdfunding.xlsx*
* **output** folder contains dataframe results from notebook saved as .csv files
    * campaign.csv
    * category.csv
    * contacts_option1.csv
    * contact_option2.csv
    * subcategory.csv
    * postgres_select_campaign.png
    * postgres_select_category.png
    * postgres_select_contacts.png
    * postgres_select_subcategory.png

# **Results**

For the ETL mini project, we demonstrated an ETL pipeline using Python, Pandas, and both Python dictionary methods and regular expressions methods to extract and transform the data.
Afterward, we created four CSV files and use the CSV file data to create an ERD and a table schema.

![schema](Starter_Files/ETL_ERD_Group_4.png)

Finally, we upload the CSV file data into a Postgres database and successfully imported all data from dataframes.

category.csv contains 9 rows that has category_id named from “cat1” to “cat9".

![categories](Starter_Files/output/category.png)

subcategory.csv contains 10 rows that has subcategory_id named from “subcat1” to “subcat10".

![Subcategories](Starter_Files/output/subcat_results.png)

We used both option 1 and option 2 to create the contact dataframe, the dataframe contains column name “contact_id”, “first_name”, “last_name”, “email”.
campaign.csv was first cleaned from crowdfunding.xlsx and the dataframe contains column name “cf_id”, “contact_id”, “company_name”, “description”, “goal”, “pledged”, “outcome”,“backers_count”, “country”, “currency”, “launched_date”, “end_date”, “category_id”, “subcategory_id”.


# **Comments and Thoughts**

