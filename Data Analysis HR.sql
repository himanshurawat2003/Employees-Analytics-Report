CREATE SCHEMA Employees;							-- Creating Schema
USE employees ;										-- default database
SELECT * FROM hr;									-- Reviewing table

-- Data Cleaning And Data Proccesing --


-- Changing Column Name -- 
ALTER TABLE hr
CHANGE COLUMN ï»¿id 
emp_id VARCHAR(20) NULL;

DESCRIBE hr;

-- Changing the date format and data type of birthdate column --

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
		WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
		WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
		ELSE NULL
		END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;				

-- Changing the date format and data type of hire_date column --

UPDATE hr
SET hire_date = CASE
		WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
        WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
        ELSE null
      END;  
      
ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

-- Changing the data type of termdate column --
UPDATE hr
SET termdate = DATE(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL and termdate !='';

UPDATE hr
SET termdate = NULL
WHERE termdate = '';

ALTER TABLE hr
MODIFY COLUMN termdate DATE ;
		
-- CREATING AGE COULMN --
ALTER TABLE hr
ADD COLUMN age INT;	

UPDATE hr
SET age = timestampdiff(YEAR,birthdate,curdate());
		

-- 1. Minimum and Maximum of Ages
SELECT min(age) , max(age) from hr;

-- 2. What is the Gender Breakdown of employees in the Company --
SELECT gender ,COUNT(*) as 'Count'
fROM hr
WHERE termdate IS NULL or termdate <=curdate()
GROUP BY gender;

-- 3. What is the race breakdown of current employees in the Company--
SELECT race , COUNT(*) as Count
FROM hr
WHERE termdate IS NULL or termdate <=curdate()
GROUP BY race;

-- 4. What is the AGe Distribution of the employees in the company --
Select 
		CASE WHEN age >= 18 and age <= 25 THEN '18-25'
			 WHEN age >= 26 and age <= 34 THEN '26-34'
			 WHEN age >= 35 and age <= 42 THEN '35-42'
			 WHEN age >= 43 and age <= 50 THEN '43-50'
             ELSE 'over 50'
		END AS age_group,
		COUNT(*) as 'Count'
        FROM hr
        WHERE termdate IS NULL or termdate <=curdate()
        GROUP BY Age_group;
        
-- 5. How many employees work in Headquarters VS. Home
SELECT DISTINCT(location) FROM hr;

SELECT location , COUNT(*) as count
FROM hr
WHERE termdate IS NULL or termdate <=curdate()
GROUP BY location;

-- 6. what is the average length of the employment who have been terminated--
SELECT ROUND(AVG(YEAR(termdate)-YEAR(hire_date)),0) as 'Avg.Employment'
FROM hr
WHERE termdate IS NOT NULL AND termdate <= curdate();

-- 7. How does the gender distribution vary across department and job titles --
SELECT department , jobtitle ,gender, COUNT(*) AS Count 
FROM hr
WHERE termdate IS NULL or termdate <= curdate()
GROUP BY department , jobtitle, gender
ORDER BY department , jobtitle, gender;

-- 8. what is the distribution of job titles acrossnthe company
SELECT jobtitle , Count(*) as Count
FROM hr
WHERE termdate IS NULL or termdate <= curdate()
GROUP BY jobtitle;

-- 9. Which department as the highest termination rate --

SELECT department , 
		COUNT(*) AS total_count ,
		COUNT(CASE
				WHEN termdate IS NOT NUll and termdate <= curdate() THEN 1
				END) AS Terminated_Count,
		ROUND((COUNT(CASE
					WHEN termdate IS NOT NUll and termdate <= curdate() THEN 1
				    END )/Count(*))*100,2) as Termination_Rate
	 FROM hr
	 GROUP BY Department;

-- 10. What is the Distribution of employees acros state

SELECT location_state , COUNT(*) as Count
FROM hr
WHERE termdate IS NULL or termdate <= curdate()
GROUP BY location_state;

-- 11. How was the company employee count changed over time based on hire and termination date --
SELECT Year,
       Hires,
       Terminations,
       Hires - Terminations as Net_changed,
       (Terminations/Hires) * 100 as Changed_percent
	FROM(
		SELECT YEAR(hire_date) as Year,
			   COUNT(*) as Hires,
               COUNT(CASE
						WHEN termdate IS NOT NULL and termdate <=curdate() THEN 1
                        END) as Terminations 
		FROM hr
        GROUP BY YEAR(hire_date)) as SUBQUERY 
GROUP BY Year
ORDER BY Year;		

-- 11 . What is the tenure distribution in each department --	
SELECT department , ROUND(AVG(datediff(termdate,hire_date)/365),0) as Avg_tenure
FROM hr
WHERE termdate IS NOT NULL and termdate <=curdate()
GROUP BY department
ORDER BY Avg_tenure ;