# Employees-Analytics-Report

## DATASET OVERVIEW

**ID**          | **First Name** | **Last Name** | **Birthdate** | **Gender** | **Race** | **Department** | **Job Title** | **Location** | **Hire Date** | **Term Date** | **Location City** | **Location State**

**1. ID:** The unique identifier for each employee in the dataset.

**2. First Name:** The first name of the employee.

**3. Last Name:** The last name of the employee.

**4. Birthdate:** The date of birth of the employee.

**5. Gender:** The gender of the employee.

**6. Race:** The race or ethnicity of the employee.

**7. Department:** The department or division within the company where the employee works.

**8. Job Title:** The specific job title or position held by the employee.

**9. Location:** The physical location or office where the employee is based.

**10. Hire Date:** The date when the employee was hired by the company.

**11. Term Date:** The date when the employee's employment with the company ended .

**12. Location City:** The city where the employee's office or workplace is located.

**13. Location State:** The state where the employee's office or workplace is located.

This dataset provides essential information about the employees, including their personal details, employment history, and location. Analyzing this dataset can offer valuable insights into various aspects of the workforce, such as demographics, job distribution, tenure, and geographical distribution.

## DATA CLEANING

1. **Data Type and Date Format Changes:**
   - Column `birthdate`: Modified the data type and date format to ensure consistency and compatibility with date-related operations.
   - Column `termdate`: Adjusted the data type and date format to facilitate accurate calculations and comparisons.
   - Column `hire_date`: Updated the data type and date format to maintain consistency and enable meaningful analysis.

2. **Column Name Change:**
   - Renamed a column: Modified the name of a column to enhance clarity and better reflect the information it represents.

By standardizing the data types, date formats, and column names, i have improved the dataset's quality and prepared it for further analysis and visualization using Power BI. These changes will help in performing accurate calculations, date-based filtering, and providing clear insights when creating reports and visualizations.

That's a great addition to your dataset! By creating a new column that calculates the age of each employee based on their birthdate and the current year, you can gain insights into the age distribution of your workforce. Here's a summary of the new column you created:

3.**New Column: Age**
- Calculation: Current Year - Birth Year
- Purpose: This column calculates the age of each employee based on their birthdate and the current year. It provides valuable information about the age distribution within your workforce, allowing you to analyze factors such as generational diversity, retirement eligibility, and potential age-related trends or patterns.

With the age column in place, i can now incorporate age-related analysis into your project. This additional data point will enable you to explore correlations between age and various other attributes such as performance, job title, department, and location. It can also assist in identifying potential age-related challenges or opportunities within the organization.


## Insights from MySQL Queries: Employee Data Analysis

1. Minimum and Maximum Ages:
   - Minimum Age: The youngest employee in the company is XX years old.
   - Maximum Age: The oldest employee in the company is XX years old.

2. Gender Breakdown of Employees:
   - Male Employees: XX% of employees identify as male.
   - Female Employees: XX% of employees identify as female.
   - Other/Prefer not to disclose: XX% of employees have other gender identities or prefer not to disclose.

3. Race Breakdown of Current Employees:
   - Race 1: XX% of employees identify as Race 1.
   - Race 2: XX% of employees identify as Race 2.
   - Race 3: XX% of employees identify as Race 3.
   - Other Races: XX% of employees identify as other races or prefer not to disclose their race.

4. Age Distribution of Employees:
   - Age Range 1 (18-25): XX% of employees fall within the 18-25 age range.
   - Age Range 2 (26-35): XX% of employees fall within the 26-35 age range.
   - Age Range 3 (36-45): XX% of employees fall within the 36-45 age range.
   - Age Range 4 (46 and above): XX% of employees are 46 years old or above.

5. Employees at Headquarters vs. Home:
   - Headquarters: XX% of employees work at the company's headquarters.
   - Remote/Home: XX% of employees work remotely or from home.

6. Average Length of Employment for Terminated Employees:
   - The average length of employment for terminated employees is XX years.

7. Gender Distribution Across Departments and Job Titles:
   - Department A: XX% of employees in Department A identify as male, XX% as female, and XX% as other or prefer not to disclose.
   - Department B: XX% of employees in Department B identify as male, XX% as female, and XX% as other or prefer not to disclose.
   - Job Title X: XX% of employees with Job Title X identify as male, XX% as female, and XX% as other or prefer not to disclose.

8. Distribution of Job Titles Across the Company:
   - Job Title 1: XX% of employees hold Job Title 1.
   - Job Title 2: XX% of employees hold Job Title 2.
   - Job Title 3: XX% of employees hold Job Title 3.
   - Other Job Titles: XX% of employees hold other job titles.

9. Department with the Highest Termination Rate:
   - Department X has the highest termination rate, with XX% of employees being terminated.

10. Distribution of Employees Across States:
    - State A: XX% of employees are located in State A.
    - State B: XX% of employees are located in State B.
    - State C: XX% of employees are located in State C.
    - Other States: XX% of employees are located in other states.

11. Employee Count Changes Over Time Based on Hire and Termination Dates:
    - The company's employee count has shown a steady increase since XX date, with a significant spike in hiring in XX year. However, there was a decrease in employee count starting from XX date, primarily due to terminations.

12. Tenure Distribution in Each Department:
    - Department A: XX% of employees have a tenure of 0-2 years, XX% have a tenure of 3-5 years, and XX% have a tenure of 6+ years.


  # REPORT 

## EMPLOYEEs DISTRIBUTION BY GENDER

  **Gender Distribution of Employees**

To visualize the gender breakdown of employees in the company, a bar graph is presented below:

 ![DASHBOARD - Power BI Desktop 06-07-2023 15_05_16 (2)](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/35bce50b-c314-4d23-8e12-42d6ccb10e73)

The bar graph illustrates the number of employees in each gender category:

- Male: There are approximately 10.5k male employees.
- Female: The number of female employees is around 9.6k.
- Non-Conforming: The company has approximately 0.6k employees who identify as non-conforming or prefer not to disclose their gender.

This visualization provides a clear representation of the gender distribution within the organization and highlights the diversity among employees.

## WORKING LOCATION OF THE EMPLOYESS

To showcase the distribution of employees based on their working location, a pie chart is presented below:

![DASHBOARD - Power BI Desktop 06-07-2023 15_05_16 (2)](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/4bbef5b4-292c-4b60-9f48-fa4d4726c5c3)

The pie chart represents the proportion of employees working in different locations:

- Remote: Approximately 5k employees, accounting for 24.83% of the workforce, work remotely or from home.
- Headquarters: The majority of employees, around 16k (75.17%), are based at the company's headquarters.

This visualization effectively illustrates the distribution of employees across different working locations, providing insights into the organization's remote work policies and the concentration of employees at the main office.

## Age Distribution of Employees

  ![DASHBOARD - Power BI Desktop 06-07-2023 15_05_16 (2)](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/baf5d091-4db6-48ff-aaa5-747b2db9899f)
  
The bar chart represents the number of employees in each age group:

- 18-25: There are approximately 2,911 employees falling within the 18-25 age range.
- 26-34: The age group of 26-34 has around 5,071 employees.
- 35-42: Approximately 4,555 employees belong to the age group of 35-42.
- 43-50: There are around 4,368 employees in the age group of 43-50.
- Over 50: The age group over 50 consists of approximately 3,746 employees.

This visualization provides a clear overview of the distribution of employees across different age groups. It highlights any variations in employee age and assists in understanding the age demographics within the company.

## Race Distribution of Employees

To illustrate the distribution of employees by race, a bar chart is provided below:

![DASHBOARD - Power BI Desktop 06-07-2023 15_05_16 (2)](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/d70df9ab-9e7a-41a4-8cdc-ef5c4f110df3)



The bar chart represents the number of employees in each race category:

- Hispanic or Latino: Approximately 2,325 employees identify as Hispanic or Latino.
- White: The number of White employees is approximately 5,884.
- Black or African American: Around 3,367 employees identify as Black or African American.
- Asian: There are approximately 3,317 Asian employees.
- Two or More Races: Approximately 3,380 employees identify as belonging to two or more races.
- American Indian or Alaska Native: Around 1,240 employees identify as American Indian or Alaska Native.
- Native Hawaiian or Other Pacific Islander: There are approximately 1,138 employees who identify as Native Hawaiian or other Pacific Islander.

This visualization provides an overview of the distribution of employees across different race categories. It highlights the diversity within the company and assists in understanding the racial demographics of the workforce.

## Hiring and Termination Trends Over Time

To visualize the hiring and termination trends over the years, a line chart is provided below:

![DASHBOARD - Power BI Desktop 06-07-2023 15_05_16 (2)](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/30f526a7-1aad-49c9-b374-4530b39e857e)

Key observations from the chart:

- The company experienced a steady increase in hiring from 2000 to 2006, with a peak in 2001.
- Terminations remained relatively stable during this period but saw a decline in 2007.
- From 2007 onwards, the net change in employee count remained positive, indicating overall growth.
- The percentage change in the workforce fluctuated between 4% and 18% throughout the years.

This visualization provides insights into the company's hiring and termination trends over time, allowing for an understanding of workforce fluctuations and potential patterns or trends.


## SCREENSHOTS

![dashboard_pdf pdf - WPS Office 06-07-2023 15_56_59](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/17b8e180-e232-4132-a5dc-67c6cda102ec)

![dashboard_pdf pdf - WPS Office 06-07-2023 15_57_08](https://github.com/himanshurawat2003/Employees-Analytics-Report/assets/113167021/ff0970ee-a98f-40db-ac37-9a4f16b9a800)
