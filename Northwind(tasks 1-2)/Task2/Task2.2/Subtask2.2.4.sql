--Найти покупателей и продавцов, которые живут в одном городе. Если в городе живут только один или несколько продавцов,
--или только один или несколько покупателей, то информация о таких покупателя и продавцах не должна попадать в результирующий 
--набор. Не использовать конструкцию JOIN

SELECT 
    Customers.[CustomerId]      AS 'CustomerId',
    Employees.[EmployeeID]      AS 'EmployeeId',
    Customers.[City]            AS 'City'
FROM [dbo].[Customers] Customers
CROSS APPLY (SELECT Employees.[EmployeeId] 
                FROM [dbo].[Employees] Employees 
                WHERE Employees.[City] = Customers.[City]) Employees;