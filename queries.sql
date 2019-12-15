/* Who is working on projects for the customer Hotel Coral Exxex? */

SELECT EMPLOYEE.NAME, EMPLOYEE.TITLE
FROM EMPLOYEE, PROJECT, CUSTOMER, ASSINGED_TO
WHERE EMPLOYEE.ID = ASSINGED_TO.EMPLOYEE AND
 ASSINGED_TO.PROJECT = PROJECT.ID AND
 PROJECT.CUSTOMER = CUSTOMER.ID  AND
CUSTOMER.BUSINESS_NAME = 'Hotel Coral Essex';


/* Paychecks need to be cut for salaried EMPLOYEEs for the month.  List NAMEs, ID's, AND check amounts for salaried EMPLOYEEs. */  

SELECT ID, NAME,  (PAY_RATE / 12)
FROM EMPLOYEE
WHERE PAY_CLASS = 'YR'
ORDER BY 3;


/* What is the NAME of our latest hire? */

SELECT EMPLOYEE.NAME
FROM EMPLOYEE
WHERE EMPLOYEE.HIRE_DATE =
(SELECT  MAX(EMPLOYEE.HIRE_DATE)
FROM EMPLOYEE);


/* Display the Cost AND COMPONENTs needed for a ENTRDMS SERVICE. */

SELECT COMPONENT.ID, COMPONENT.TYPE, COMPONENT.COST
FROM COMPONENT, MADE_OF, HARDWARE, SERVICE
WHERE  COMPONENT.ID = MADE_OF.COMPONENT AND 
MADE_OF.HARDWARE = HARDWARE.ID AND
SERVICE.HARDWARE = HARDWARE.ID AND 
SERVICE.CODE = 'ENTRDMS';


/* A snow storm is about to Hit Denver, we need to call all of our Denver EMPLOYEEs.  What are thier NAMEs AND phone numbers? */

SELECT EMPLOYEE.NAME, EMPLOYEE.PHONE
FROM EMPLOYEE
WHERE EMPLOYEE.ADDRESS LIKE '%Denver%';


/* What are the total earnings for employee D Isiah T. Billings-Clyde? */

SELECT EMPLOYEE.PAY_RATE * 
(SELECT SUM(HOURS_WORKED) FROM TIMESHEET WHERE TIMESHEET.EMPLOYEE = (SELECT EMPLOYEE.ID FROM EMPLOYEE WHERE EMPLOYEE.NAME = 'D Isiah T. Billings-Clyde')) 
FROM EMPLOYEE WHERE EMPLOYEE.NAME = 'D Isiah T. Billings-Clyde';


/* How much has employee D Isiah T. Billings-Clyde earn for project 00308? */



/* How much has employee D Isiah T. Billings-Clyde earned worked for Hotel Coral Essex? */



/* How much money has been paid out to employees who have worked for the customer Hotel Coral Essex? */



/* How many employees, whose manager's make more than $125000, have worked for Fractal Inc.? */