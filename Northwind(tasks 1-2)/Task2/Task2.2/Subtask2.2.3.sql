--По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя. Необходимо определить 
--это только для заказов, сделанных в 1998 году. 

SELECT 
    Orders.[EmployeeID]       AS 'EmployeeId',
	Orders.[CustomerID]       AS 'CustomerId',
	COUNT(Orders.[OrderID])  AS 'Amount'
FROM [dbo].[Orders] Orders 
WHERE YEAR(Orders.[OrderDate]) = 1998
GROUP BY Orders.[EmployeeID], Orders.[CustomerID];