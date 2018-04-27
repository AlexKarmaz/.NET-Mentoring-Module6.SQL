--Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g. 
--Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. Запрос должен возвращать 
--только колонки CustomerID и Country и отсортирован по Country.

SELECT 
    Customers.[CustomerId]     AS 'CustomerId',
	Customers.[Country]       AS 'Country'
FROM [dbo].[Customers] Customers
WHERE SUBSTRING(Customers.[Country], 1, 1) BETWEEN 'b' AND 'g'
ORDER BY Customers.[Country];