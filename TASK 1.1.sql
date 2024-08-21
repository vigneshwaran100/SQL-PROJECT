/* Perform the following with the help of the above database 
TASK 1.1	Get all the details from the person table including email ID, phone number, and phone number type */
SELECT * FROM [Person].[EmailAddress];

SELECT * FROM [Person].[PersonPhone];

SELECT * FROM [Person].[PhoneNumberType];
/*JOIN PERSONPHONE AND PHONENUMBERTYPE USING INNER JOIN*/

SELECT * FROM [Person].[PersonPhone] AS A INNER JOIN [Person].[PhoneNumberType] AS B ON  A.PhoneNumberTypeID=B.PhoneNumberTypeID; 

/*TASK 1.2	Get the details of the sales header order made in May 2011 */

