CREATE DATABASE EmployeeDB;
USE EmployeeDB;
CREATE TABLE Empl (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT
);
INSERT INTO Empl (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
(8883, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);
select*from Empl;
#A. Query to display EName and Sal of employees whose salary is greater than or equal to 2200:
SELECT ename, sal
FROM Empl
WHERE sal >= 2200;
#B. Query to display details of employees who are not getting commission:
SELECT *
FROM Empl
WHERE comm IS NULL OR comm = 0;
#C. Query to display employee name and salary of employees whose salary is not in the range 2500 to 4000:
SELECT ename, sal
FROM Empl
WHERE sal < 2500 OR sal > 4000;
#D. Query to display the name, job title, and salary of employees who don’t have a manager:
SELECT ename, job, sal
FROM Empl
WHERE mgr IS NULL;
#E. Query to display the name of an employee whose name contains “A” as the third alphabet:
SELECT ename
FROM Empl
WHERE SUBSTRING(ename, 3, 1) = 'A';
#F. Query to display the name of an employee whose name contains “T” as the last alphabet:
SELECT ename
FROM Empl
WHERE ename LIKE '%T';



