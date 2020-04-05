# Employee Database: A Mystery in Two Parts

![sql.png](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/sql.png?raw=true)

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Modeling

2. Data Engineering

3. Data Analysis

## Instructions

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

![ERD](https://github.com/swati-dontamsetti/sql-challenge/blob/master/EmployeeSQL/QuickDBD-Free%20Diagram.png?raw=true)

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

* Import each CSV file into the corresponding SQL table.

#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

![1](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q1.png?raw=true)

2. List employees who were hired in 1986.

![2](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q2.png?raw=true)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

![3](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q3.png?raw=true)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![4](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q4.png?raw=true)

5. List all employees whose first name is "Hercules" and last names begin with "B."

![5](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q5.png?raw=true)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![6](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q6.png?raw=true)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![7](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q7.png?raw=true)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![8](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/Q8.png?raw=true)

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

2. Create a histogram to visualize the most common salary ranges for employees.
![hist](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/hist.png?raw=true)
* Analysis: As you can see from the table, the vast majority of employees have an entry level salary with less than half the company in any of the higher level positions (and therefore salary ranges). This does not seem like a realistic salary breakdown of a company.

3. Create a bar chart of average salary by title.
![bar](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/bar.png?raw=true)
* Analysis: As you can see from the table, the vast majority of employee titles have similar average salaries. Staff and Senior Staff have a slightly higher average salary, but only **slightly**. In an actual company, one would expect the Assistant Engineer, Engineer, and Senior Engineer to have vastly different average salaries, yet they are exactly the same average salary. This does not seem like a realistic salary breakdown of a company.

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

![e1](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/E1.png?raw=true)
![e2](https://github.com/swati-dontamsetti/sql-challenge/blob/master/Pics/E2.png?raw=true)
