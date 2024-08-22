/*TASK 1.4: Get the total sales made in May 2011 */
use [AdventureWorks2012];

SELECT * FROM [Sales].[SalesOrderDetail];

SELECT MONTH(ModifiedDate) as month, sum(LineTotal) as Total_Cost from [Sales].[SalesOrderDetail] where MONTH(ModifiedDate)=05 group by ModifiedDate 
having ModifiedDate between '2011-05-01' and '2011-05-31';


/*TASK 1.5: Get the total sales made in the year 2011 by month order by increasing sales */

SELECT * FROM [Sales].[SalesOrderHeader];

SELECT MONTH(OrderDate) as Month, sum(TotalDue) as Total from [Sales].[SalesOrderHeader] where year(OrderDate)=2011 group by month(OrderDate)
order by Month desc ;



/*Task 1.6: Get the total sales made to the customer with FirstName='Ranjit' and LastName ='Varkey Chudukatil' */


SELECT * FROM [Sales].[SalesPerson] AS SP INNER JOIN [Person].[Person] AS PP ON SP.BusinessEntityID=PP.BusinessEntityID
WHERE PP.FirstName='Ranjit' and PP.LastName='Varkey Chudukatil';





