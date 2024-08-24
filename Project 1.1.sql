/* Perform the following with the help of the above database 
TASK 1.1	Get all the details from the person table including email ID, phone number, and phone number type */

SELECT * FROM [Person].[EmailAddress];

SELECT * FROM  [Person].[PersonPhone];

SELECT * FROM [Person].[PhoneNumberType];

/*TASK 1.2	Get the details of the sales header order made in May 2011 */

SELECT * FROM [Sales].[SalesOrderHeader];

SELECT * FROM [Sales].[SalesOrderHeader] WHERE OrderDate between '2011-05-01' and '2011-05-31';


/*order this onlineordernumber in desc*/

SELECT * FROM [Sales].[SalesOrderHeader] WHERE OrderDate between '2011-05-01' and '2011-05-31' order by OnlineOrderFlag desc;


/*TASK 1.3:	Get the details of the sales details order made in the month of May 2011 */

SELECT * FROM [Sales].[SalesOrderDetail];

SELECT * FROM [Sales].[SalesOrderDetail] WHERE MONTH(ModifiedDate)=05 and YEAR(ModifiedDate)=2011;








