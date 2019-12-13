//Who is working on projects for the customer Hotel Coral Exxex?

Select EMPLOYEE.NAME, EMPLOYEE.TITLE
FROM EMPLOYEE, PROJECT, CUSTOMER, ASSINGED_TO
WHERE EMPLOYEE.ID = ASSINGED_TO.EMPLOYEE AND
 ASSINGED_TO.PROJECT = PROJECT.ID AND
 PROJECT.CUSTOMER = CUSTOMER.ID  AND
CUSTOMER.BUSINESS_NAME = 'Hotel Coral Essex';

//Paychecks need to be cut for salaried employees for the month.  List Names, ID's, and check amounts for salaried employees.   

SELECT ID, name,  (pay_rate / 12)
FROM Employee
Where pay_class = 'YR'
Order by 3

