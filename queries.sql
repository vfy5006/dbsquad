/*Who is working on projects for the customer Hotel Coral Exxex?*/

Select EMPLOYEE.NAME, EMPLOYEE.TITLE
FROM EMPLOYEE, PROJECT, CUSTOMER, ASSINGED_TO
WHERE EMPLOYEE.ID = ASSINGED_TO.EMPLOYEE AND
 ASSINGED_TO.PROJECT = PROJECT.ID AND
 PROJECT.CUSTOMER = CUSTOMER.ID  AND
CUSTOMER.BUSINESS_NAME = 'Hotel Coral Essex';

/*Paychecks need to be cut for salaried employees for the month.  List Names, ID's, and check amounts for salaried employees. */  

SELECT ID, name,  (pay_rate / 12)
FROM Employee
Where pay_class = 'YR'
Order by 3

/*What is the name of our latest hire?*/

Select employee."NAME"
From employee
where Employee.HIRE_DATE =
(SELECT  MAX(EMPLOYEE.HIRE_DATE)
FROM EMPLOYEE)

/*Display the Cost and components needed for a ENTRDMS service.*/

Select Component.ID, Component.type, component.cost
From COMPONENT, MADE_OF, HARDWARE, SERVICE
WHERE  component.id = made_of.component and 
made_of.hardware = hardware.id and
service.hardware = hardware.id and 
service.CODE = 'ENTRDMS'

/*A snow storm is about to Hit Denver, we need to call all of our Denver employees.  Whar are thier names and phone numbers?*/

Select Employee.name, Employee.phone
From employee
Where employee.address like '%Denver%'
