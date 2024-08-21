/*TASK 1.2	Get the details of the sales header order made in May 2011 */

select * from [Sales].[SalesOrderHeader];

select * from [Sales].[SalesOrderHeader] where OrderDate between '2011-05-01' and '2011-05-31';

/*order this onlineordernumber in desc*/

select * from [Sales].[SalesOrderHeader] where MONTH(OrderDate)=05 and YEAR(OrderDate)=2011 order by OnlineOrderFlag desc;
