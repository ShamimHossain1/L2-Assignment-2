# What is PostgreSQL?

PostgreSQL holo ekta open-source relational database management system (RDBMS) ja data manage korar jonno SQL language use kore. Eta highly advanced and powerful database, jeita structured data charao JSON, XML moto semi-structured data o support kore. PostgreSQL ACID compliant, mane eta data consistency, reliability and safety ensure kore. Eta banking system, online application, reporting system, data analytics er moto sensitive area gulote beshi use hoy.

# What is the purpose of a database schema in PostgreSQL?

Schema holo ekta logical container jeikhane table, view, function, index, etc. thake. PostgreSQL-e schema use kore amra ekta database er vitor multiple user environment manage korte pari. Proti user ba application jodi alada-alada schema use kore, tahole tader resources easily separate kora jay. Eta structure maintain korte help kore and naming conflict avoid kore.

- Example:
  CREATE SCHEMA school;
  Er mane holo "school" namer ekta logical area create kora holo jeikhane table/view banano jabe.

# Explain the Primary Key and Foreign Key concepts in PostgreSQL.

Primary Key holo ekta column ba column group ja pratek row ke uniquely identify kore. Ei field-e duplicate value thakte pare na, ebong eta always NOT NULL hoy.

Foreign Key holo ekta column jeita onno table er primary key-er upor depend kore. Eta relationship establish kore duita table er moddhe.

Example:
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
name TEXT
);

CREATE TABLE results (
result_id SERIAL PRIMARY KEY,
student_id INT REFERENCES students(student_id),
marks INT
);

Ekhane results.student_id holo foreign key jeita students.student_id er sathe linked.

# What is the difference between the VARCHAR and CHAR data types?
VARCHAR(n) mane holo variable length character string ja maximum n character porjonto rakhte pare. Ar CHAR(n) holo fixed-length string, mane input jodi choto hoy, tao baki jayga space diya fill hoy.

Example:
VARCHAR(10) e input "hello" dile memory te 5 character store hobe.
CHAR(10) e same input dile memory te 10 character store hobe ("hello " with 5 space).

So, VARCHAR efficient and flexible. CHAR use kora hoy fixed-size field-er jonno.

# Explain the purpose of the WHERE clause in a SELECT statement.
WHERE clause use hoy condition define korar jonno jate specific row gulo select kora jay. Without WHERE, SELECT sob data fetch kore, kintu WHERE diye amra filter korte pari.

Example:

SELECT * FROM students WHERE marks > 80;
Ekhane shudhu sei row gulo ashbe jekhane marks 80 er beshi.

Eta query performance improve kore and user ke specific data dekhay.