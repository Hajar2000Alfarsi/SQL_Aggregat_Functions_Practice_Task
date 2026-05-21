USE Company

SELECT SUM(salary) AS Total_Salary FROM Employee;

SELECT AVG(salary) AS AVG_Salary FROM Employee;

SELECT MIN(salary) AS Lowest_Salary FROM Employee;

SELECT COUNT(SSN) AS Total_Employees FROM Employee;

SELECT * FROM Employee;

SELECT D_Num,SUM(salary) AS Total_Salary FROM Employee GROUP BY D_Num;

SELECT D_Num,AVG(salary) AS Average_Salary FROM Employee GROUP BY D_Num;

SELECT D_Num,COUNT(SSN) AS Total_Employees FROM Employee GROUP BY D_Num;

SELECT D_NUM,SUM(salary) as Total_Salary FROM Employee 
GROUP BY D_Num HAVING SUM(Salary) > 10000;

SELECT D_NUM,COUNT(SSN) AS Employee_Count FROM Employee
GROUP BY D_Num having count(SSN) > 5;

SELECT D_NUM, AVG(salary) AS Average_Salary
FROM Employee GROUP BY D_NUM HAVING AVG(salary) > 5000;

SELECT SUM(Amount) AS Total_Revenue FROM Orders;

SELECT AVG(Amount) AS Average_Order_Amount FROM Orders;

SELECT COUNT(OrderID) AS Total_Orders FROM Orders;

SELECT MAX(Amount) AS Maximum_Order_Amount,MIN(Amount) AS Minimum_Order_Amount FROM Orders;

SELECT CustomerID, SUM(Amount) AS Total_Amount FROM Orders GROUP BY CustomerID;



SELECT c.CustomerID, c.CustomerName,COUNT(o.OrderID) AS Total_Orders
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName;

SELECT c.CustomerID, c.CustomerName,SUM(o.Amount) AS Total_Spent
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName;

SELECT c.CustomerID, c.CustomerName,SUM(o.Amount) AS Total_Spent
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING SUM(o.Amount) > 1000;

SELECT c.CustomerID, c.CustomerName
FROM Customers c LEFT OUTER JOIN Orders o 
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

SELECT SUM(Quantity * Price) AS Total_Revenue FROM Sales;

SELECT ProductID,SUM(Quantity) AS Total_Quantity_Sold FROM Sales GROUP BY ProductID;

SELECT ProductID,AVG(Price) AS Average_Price FROM Sales GROUP BY ProductID;

SELECT ProductID,SUM(Quantity) AS Total_Quantity_Sold FROM Sales 
GROUP BY ProductID ORDER BY SUM(Quantity) DESC;

SELECT p.ProductName,SUM(od.Quantity) AS Total_Quantity_Sold
FROM OrderDetails od JOIN Products p 
ON od.ProductID = p.ProductID GROUP BY p.ProductName;

SELECT p.ProductName,SUM(od.Quantity) AS Total_Quantity_Sold
FROM OrderDetails od JOIN Products p 
ON od.ProductID = p.ProductID
GROUP BY p.ProductName HAVING SUM(od.Quantity) > 50;

SELECT p.ProductName,COUNT(od.OrderID) AS Total_Orders
FROM OrderDetails od JOIN Products p 
ON od.ProductID = p.ProductID
GROUP BY p.ProductName;

SELECT TOP 1 p.ProductName,SUM(od.Quantity) AS Total_Quantity_Sold
FROM OrderDetails od JOIN Products p 
ON od.ProductID = p.ProductID
GROUP BY p.ProductName ORDER BY SUM(od.Quantity) DESC;

SELECT D_num,MAX(salary) AS Max_Salary FROM Employee GROUP BY D_Num;

SELECT D_num,MIN(salary) AS Min_Salary FROM Employee GROUP BY D_Num;

SELECT D_num,AVG(salary) AS AVG_Salary FROM Employee GROUP BY D_Num;

SELECT D_num,MAX(salary) AS Max_Salary,
		D_num,MIN(salary) AS Min_Salary,
		(MAX(Salary) - MIN(Salary)) AS Salary_Difference
FROM Employee
GROUP BY D_Num;

SELECT D_num,AVG(salary) AS Avg_Salary FROM Employee
GROUP BY D_num HAVING AVG(salary) > 6000;

SELECT D_num,SUM(salary) AS Total_Salary FROM Employee GROUP BY D_num HAVING SUM(salary) > 20000;

SELECT D_num,COUNT(SSN) AS Total_Employees FROM Employee GROUP BY D_num HAVING COUNT(SSN) > 3;

SELECT D_num,AVG(Salary) AS Avg_Salary FROM Employee GROUP BY D_num ORDER BY AVG(salary) DESC;

SELECT c.CustomerID,c.CustomerName,SUM(o.Amount) AS Total_Spent 
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName;

SELECT c.CustomerID,c.CustomerName,AVG(o.Amount) AS Average_Order_Value
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName;

SELECT c.CustomerID,c.CustomerName,COUNT(o.OrderID) AS Total_Orders
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName;

SELECT c.CustomerID,c.CustomerName,SUM(o.Amount) AS Total_Spent
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName HAVING SUM(o.Amount) > 500;

SELECT ProductID,SUM(Quantity * Price) AS Total_Revenue FROM Sales GROUP BY ProductID;

SELECT ProductID,SUM(Quantity) AS Total_Quantity_Sold FROM Sales GROUP BY ProductID;

SELECT ProductID,AVG(Price) AS Average_Price FROM Sales GROUP BY ProductID;

SELECT ProductID,SUM(Quantity * Price) AS Total_Revenue
FROM Sales GROUP BY ProductID HAVING SUM(Quantity * Price) > 1000;

SELECT COUNT(OrderID) AS Total_Orders FROM Orders;

SELECT SUM(Amount) AS Total_Revenue FROM Orders;

SELECT AVG(Amount) AS Average_Order_Amount FROM Orders;

SELECT MAX(Amount) AS Highest_Order_Amount,MIN(Amount) AS Lowest_Order_Amount FROM Orders;

SELECT CustomerID,COUNT(OrderID) AS Total_Orders FROM Orders 
GROUP BY CustomerID HAVING COUNT(OrderID) > 2;

SELECT c.CustomerName,COUNT(o.OrderID) AS Total_Orders
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

SELECT c.CustomerName,SUM(o.Amount) AS Total_Spending
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

SELECT c.CustomerName,SUM(o.Amount) AS Total_Spending
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName HAVING SUM(o.Amount) > 1000;

SELECT c.CustomerName,SUM(o.Amount) AS Total_Spending
FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName ORDER BY SUM(o.Amount) DESC;

SELECT DepartmentID,MAX(Salary) AS Max_Salary FROM Employees 
GROUP BY DepartmentID HAVING MAX(Salary) > 8000;

SELECT DepartmentID,MIN(Salary) AS Min_Salary FROM Employees
GROUP BY DepartmentID HAVING MIN(Salary) < 3000;

SELECT DepartmentID,AVG(Salary) AS Avg_Salary FROM Employees
GROUP BY DepartmentID HAVING AVG(Salary) BETWEEN 4000 AND 7000;

SELECT DepartmentID,COUNT(EmployeeID) AS Total_Employees FROM Employees
GROUP BY DepartmentID HAVING COUNT(EmployeeID) >= 2;
 
SELECT p.ProductName,SUM(s.Quantity * s.Price) AS Total_Revenue
FROM Sales s JOIN Products p 
ON s.ProductID = p.ProductID GROUP BY p.ProductName;

SELECT TOP 1 p.ProductName,SUM(s.Quantity) AS Total_Quantity_Sold
FROM Sales s JOIN Products p 
ON s.ProductID = p.ProductID
GROUP BY p.ProductName ORDER BY SUM(s.Quantity) DESC;

SELECT TOP 1 p.ProductName,SUM(s.Quantity * s.Price) AS Total_Revenue
FROM Sales s JOIN Products p 
ON s.ProductID = p.ProductID
GROUP BY p.ProductName ORDER BY SUM(s.Quantity * s.Price) DESC;

SELECT p.ProductName FROM Products p LEFT OUTER JOIN Sales s 
ON p.ProductID = s.ProductID WHERE s.ProductID IS NULL;

SELECT D_Num,SUM(salary) AS Total_Salary
FROM Employee GROUP BY D_Num;

SELECT D_Num,AVG(salary) AS Average_Salary FROM Employee GROUP BY D_Num;

SELECT D_Num,SUM(Salary) AS Total_Salary FROM Employee GROUP BY D_Num 
HAVING SUM(salary) > (SELECT AVG(DeptTotal)
    FROM (
        SELECT SUM(Salary) AS DeptTotal
        FROM Employees
        GROUP BY DepartmentID
    ) AS DepartmentTotals);

SELECT DepartmentID,SUM(Salary) AS Total_Salary,RANK() OVER (ORDER BY SUM(Salary) DESC) AS Dept_Rank 
FROM Employees GROUP BY DepartmentID;

SELECT SaleDate,SUM(Quantity * Price) AS Total_Revenue FROM Sales GROUP BY SaleDate;

SELECT YEAR(SaleDate) AS Sale_Year,MONTH(SaleDate) AS Sale_Month,SUM(Quantity * Price) AS Total_Revenue 
FROM Sales GROUP BY YEAR(SaleDate), MONTH(SaleDate);

SELECT TOP 1 SaleDate,SUM(Quantity * Price) AS Total_Revenue
FROM Sales GROUP BY SaleDate ORDER BY SUM(Quantity * Price) DESC;

SELECT YEAR(SaleDate) AS Sale_Year,
       MONTH(SaleDate) AS Sale_Month,
       COUNT(SaleID) AS Total_Sales
FROM Sales GROUP BY YEAR(SaleDate), MONTH(SaleDate);

SELECT CustomerID,COUNT(OrderID) AS Total_Orders 
FROM Orders GROUP BY CustomerID HAVING COUNT(OrderID) > 5;

SELECT CustomerID,AVG(Amount) AS Average_Order_Value
FROM Orders GROUP BY CustomerID HAVING AVG(Amount) > 200;

SELECT CustomerID,SUM(Amount) AS Total_Spending
FROM Orders GROUP BY CustomerID ORDER BY SUM(Amount) DESC
LIMIT 3;

SELECT CustomerID,COUNT(OrderID) AS Total_Orders
FROM Orders GROUP BY CustomerID HAVING COUNT(OrderID) = 1;

SELECT c.CategoryName,SUM(s.Quantity * s.Price) AS Total_Revenue
FROM Sales s JOIN Products p 
ON s.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

SELECT c.CategoryName,AVG(s.Quantity * s.Price) AS Avg_Product_Revenue
FROM Sales s JOIN Products p 
ON s.ProductID = p.ProductID JOIN Categories c 
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

SELECT c.CategoryName,SUM(s.Quantity * s.Price) AS Total_Revenue
FROM Sales s JOIN Products p ON s.ProductID = p.ProductID JOIN Categories c 
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName HAVING SUM(s.Quantity * s.Price) > 5000;

SELECT TOP 1 c.CategoryName,SUM(s.Quantity * s.Price) AS Total_Revenue
FROM Sales s JOIN Products p ON s.ProductID = p.ProductID JOIN Categories c 
ON p.CategoryID = c.CategoryID 
GROUP BY c.CategoryName ORDER BY SUM(s.Quantity * s.Price) DESC;

SELECT COUNT(salary) AS Employees_With_Salary FROM Employee;

SELECT DepartmentID,SUM(Salary) AS Total_Salary FROM Employees GROUP BY DepartmentID;

SELECT AVG(Salary) AS Average_Salary FROM Employee;

SELECT D_Num FROM Employee GROUP BY D_Num HAVING COUNT(Salary) = 0;

