-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employee" (
    "emp_num" INTEGER   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_num"
     )
);

CREATE TABLE "Salaries" (
    "emp_num" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "Dept_manager" (
    "dept_num" VARCHAR   NOT NULL,
    "emp_num" INTEGER   NOT NULL
);

CREATE TABLE "Dept_employee" (
    "emp_num" INTEGER   NOT NULL,
    "dept_num" VARCHAR   NOT NULL
);

CREATE TABLE "Departments" (
    "dept_num" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_num"
     )
);

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_title_id" FOREIGN KEY("title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_num" FOREIGN KEY("emp_num")
REFERENCES "Employee" ("emp_num");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_num" FOREIGN KEY("dept_num")
REFERENCES "Departments" ("dept_num");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_num" FOREIGN KEY("emp_num")
REFERENCES "Employee" ("emp_num");

ALTER TABLE "Dept_employee" ADD CONSTRAINT "fk_Dept_employee_emp_num" FOREIGN KEY("emp_num")
REFERENCES "Employee" ("emp_num");

ALTER TABLE "Dept_employee" ADD CONSTRAINT "fk_Dept_employee_dept_num" FOREIGN KEY("dept_num")
REFERENCES "Departments" ("dept_num");

