--По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. Использовать функцию COUNT
--и не использовать предложения WHERE и GROUP.

SELECT COUNT(DISTINCT Orders.[CustomerId]) AS 'Distinct customers count' 
FROM [dbo].[Orders] Orders;