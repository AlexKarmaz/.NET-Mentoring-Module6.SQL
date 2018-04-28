--Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хотя бы одного продукта 
--на складе (UnitsInStock в таблице Products равно 0). Использовать вложенный SELECT для этого запроса с использованием 
--оператора IN

SELECT Suppliers.[CompanyName]     AS 'CompanyName'
FROM [dbo].[Suppliers] Suppliers
WHERE Suppliers.[SupplierID] IN (SELECT Products.[SupplierID]
                                    FROM [dbo].[Products] Products
                                    WHERE Products.[UnitsInStock] = 0);