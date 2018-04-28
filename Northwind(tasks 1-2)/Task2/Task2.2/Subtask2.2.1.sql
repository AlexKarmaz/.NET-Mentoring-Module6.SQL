--По таблице Orders найти количество заказов с группировкой по годам. В результатах запроса надо возвращать две колонки c 
--названиями Year и Total. Написать проверочный запрос, который вычисляет количество всех заказов.

SELECT 
    YEAR(Orders.[OrderDate])     AS 'Year',
	COUNT(Orders.[OrderId])     AS 'Total' 
FROM [dbo].[Orders] Orders
GROUP BY YEAR(Orders.[OrderDate]);

--SELECT 
--	COUNT(Orders.[OrderId])     AS 'All orders' 
--FROM [dbo].[Orders] Orders