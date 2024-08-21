/*TASK 1.4: Get the total sales made in May 2011 */

select * from [Sales].[SalesOrderDetail];

select count(ModifiedDate) as Total from [Sales].[SalesOrderDetail] where ModifiedDate between '2011-05-01' and '2011-05-31' ;



/*TASK 1.5: Get the total sales made in the year 2011 by month order by increasing sales */

select * from [Sales].[SalesOrderHeader];

select MONTH(OrderDate) as Month, sum(TotalDue) as Total from [Sales].[SalesOrderHeader]  where year(OrderDate)=2011 group by month(OrderDate) order by Month ;


/*Task 1.6: Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong' */
select * from [Person].[Person] ;