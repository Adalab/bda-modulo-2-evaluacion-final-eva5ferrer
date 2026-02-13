# 👩‍💻 Modulo 2 - Final assignment (APIs & SQL) - Eva Ferrer
## Objective 
The purpose of this assignment is to practice all the skills learnt during module 2. These involve extracting data from public APIs using Python language via Visual Studio Code (Jupyter Notebook) and working with/sending queries to databases in MySQL Workbench. 

The assignment is divided in two exercises:
- **Exercise 1:** Extract data from an API and build a database
- **Exercise 2:** Working with the database "Sakila"

## 📁 Repository structure
```text
├── README.md
├── ejercicio-1-1-python-API.ipynb
├── ejercicio-1-2-SQL-peliculas.sql
├── ejercicio-2-SQL-sakila.sql
```

## Exercise 1: 
The objective of this exercise is to extract specific data from the endpoint "https://beta.adalab.es/resources/apis/pelis/pelis.json" and then transfer this data to a SQL database in order to process some queries and get the required information.
The exercise 1 is divided in 4 phases:

* **Phase 1: Data extraction using Python** 
    - File name: ejercicio-1-1-python-API.ipynb
    - Instructions: Open the file with Visual Studio Code and follow the instructions from the code. You will need to install some libraries (specified within the jupyter notebook file).
* **Phase 2: Database creation**
    * **Phase 2A (schema creation):** Database schema created using Phython.
        - File name: ejercicio-1-1-python-API.ipynb
        - Instructions: Follow the instructions listed in the jupyter notebook file. We will be creating one schema called "peliculas".
    * **Phase 2B (tables creation):** Tables creation using SQL Workbench. 
        - File name: ejercicio-1-2-SQL-peliculas.sql
        - Instructions: Follow the instructions listed in the SQL file. In this phase we will create two tables: "peliculas" and "generos". 
* **Phase 3: Data insertion**
    - File name: ejercicio-1-2-SQL-peliculas.sql
    - Instructions: Follow the instructions listed in the SQL file. In this phase we will be insterting the data previously extracted in phase 1.
* **Phase 4: Queries**
    - File name: ejercicio-1-2-SQL-peliculas.sql
    - Instructions: Follow the instructions listed in the SQL file. In this phase we will be using different queries to get the required information from the database.

## Exercise 2: 
The objective of this exercise is to get familiar with processing some queries through MySQL Workbench. All the queries have been done to the same database called "Sakila". This database was already created by Adalab.
- File name: ejercicio-2-SQL-sakila.sql
- Instructions: Follow the instructions listed in the SQL file. There are several questions listed in which an associated SQL query is listed below. In some cases, more than one query option has been included (with the same outcome). 

## 🛠️ Tools/technical skills required:
- **Python language**
- **Jupyter Notebook**
- **Visual Studio Code**
- **MySQL Server**
- **MySQL Workbench**

## How to clone the repository
Using Visual Studio Code, open the folder where you want to clone the repository and execute the below:
   ```bash
   git clone https://github.com/Adalab/bda-modulo-2-evaluacion-final-eva5ferrer.git
   ```

