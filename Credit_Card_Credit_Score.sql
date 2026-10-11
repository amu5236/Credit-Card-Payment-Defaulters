Create Database Sales ;
use Sales ;
Select * from Sales_dataset;

Select Product, Avg(Profit) as avg_profit
from Sales_dataset
Group by Product ;

Select Product, Sum(Profit) as sum_profit
from Sales_dataset
Group By Product ;

Select * from Sales_dataset ;

Select Product, Sum(Quantity) as Sum_Quantity
from Sales_dataset
Group By Product ;

Select Product ,Sum(Quantity) as Sum_Quantity, Sum(Profit) as Sum_Profit, Sum(Region) as Region_Sum 
from Sales_dataset 
Group By Product ;

Select * from Sales_dataset ;

Select Product, Length(Product) as Product_Length from Sales_dataset ;


Rename Table sales_dataset to sales1 ;

Select * from Sales1;

Select Concat(Category, ' ', Product, ' ') as Details from Sales1 ;

Select * from Sales1;

Select Concat(Category, ' ', Product, ' ', Payment_Method, ' ') as Details from Sales1; 

Select Now() ;

Select * from Sales1;

Select Order_ID , Year(Order_Date) as Orderdate from Sales1;

Select * from Sales1;

Select Profit,
Round(Profit) as Rounded,
Ceil(Profit) as Ceiled,
Floor(Profit) as floored
from sales1;


Select * From sales1;

Select Order_ID, Mod(Order_ID,2) as Remainder from sales1;

Select Quantity, Mod(Quantity, 2) as Remainder from sales1;

Select * from Sales1;

Select Unit_cost , Mod(Unit_cost,3) as Remainder1 from Sales1;

Select Region , IF(Region = 'West', 'Yes','No') As region  from sales1;

Select Region, If(Region = 'East' , 'Hello','Buy' ) as region,If(Region = 'West' , 'Eastern','Whatsapp')  as region1 from sales1;

Select * from Sales1;

Select * from employee ;

Select Full_Name, Datediff(curdate(), Date_Of_Birth) as Days_lived from Employee ;

Select Full_Name, Timestampdiff(year, Date_of_Birth, Curdate()) as Age from Employee ;

Set autocommit = 0;

Alter Table Employee Drop Employee_ID;
Rollback ;

Select * from Employee ;

Use Sales ;

Select * from employee ;

Select * from sales1 ;

Use Raju ;

Select * from mouse ;

Select * from user ;

Select * from mouse ;

Select user.Name , Mouse.Name
from user
Join Mouse on user.Id_1 = Mouse.Id 
Where user.Salary >= 'Male' ; 




Select * from Mouse 
union
Select * from user ;

Select name from user
union
Select  name from Mouse 
Order by name ;

Use Shiva ;
Select * from Sales_data_2025 ;

Rename Table Sales_data_2025 to Sales ;

Select * from sales ;

Select 
Sum(Gross_Sales) as Total_Sales
from Sales;

Select * from Sales ;

Select 
Order_Id,
Sum(Net_Sales) Total_Sales 
from Sales 
Group By Order_ID;

Select 
Order_ID,
Date,
Product,
Sum(Net_Sales)
from Sales
Group by Order_ID ,Product,Date;

Select * from Sales ;

Use Shiva ;

Select * from Sales ;

Select 
Product,
Sum(Gross_Sales) Over (Partition By Product) TotalSales
From Sales ;


Select * from Sales ;

Select 
Product, 
Sum(Gross_sales) Over (Partition by Net_Sales) Total_Sales
From Sales ;



Select Order_ID , Count(Order_ID) as Orders FroM sales where Order_Id = 'ORD-1000' ;

Select Product, Sum(Net_Sales) from sales Group by Product;

Select * from sales ;

Select 
Order_Id,
Product,
Sum(Gross_Sales) Over (Partition By Product) TotalSales 
From Sales ;

Select * from Sales ;

Select
Order_ID, 
Category,
Net_Sales,
Sum(Gross_Sales) Over (Partition by Category) TotalSales from sales ; 

Select * from sales ;



Select
Date,
Product,
Sum(Gross_Sales) over (Partition by Product Order by Date Rows  1 Preceding) Total_Sales
from Sales ;

Select * from Sales ;

Select 
Date, 
Product,
Rank() over (Order by Product) RankOrder From sales ;


Select 
Date,
Product,
NTile(3) over (Order by Product) 
from Sales ;

Select * from Sales ;

Select  
Category, 
Sum(Net_Sales) Over() TotalSales from Sales ;

Select 
Category,
Lead(Payment_Method, 2,10) Over (Order By Date) TotalDate from Sales ;


Select * from 	Sales ;

Select 
Product, Order_ID, Payment_Method,
Sum(Case when Gross_Sales > 3000 then 1 Else 0 End) Over (Order by Product) TotalGrossSales from Sales; 			

Select Category, Product, Payment_Method,
Sum(Gross_Sales) Over (Partition by Product, Payment_Method) TotalProductsales from sales ;


Select * from Sales ;

Select 
Order_ID,
Gross_Sales,
Sum(Gross_Sales) Over (Order by Gross_Sales ) as Running_Total
from Sales ;

Select * from Sales ;

Select
Order_ID,
Category,
Gross_Sales,
Sum(Gross_Sales) Over(Partition by Category) Sum_of_Sales from Sales ;

Select * from Sales ;

Select 
Order_Id,
Product,
Gross_Sales,
Sum(Gross_Sales) Over () TotalSales,
Sum(Gross_Sales) Over (Partition by Product, Category Order by Order_Id) TotalSales1 
from Sales ;

Select * from Sales ;

Select 
Order_Id,
Product,
SUM(Net_Sales) over (partition by Product, Order_Id) Combination from Sales ;

Select * from Sales ;

Select Order_Id,
Rank() Over(Partition by Order_ID Order by Order_Id Desc)
from Sales ;

Use Shiva ;

Select * from Sales ;

Select 
Order_ID,
Gross_Sales,
Product, 
Rank() over (Order by order_ID Desc) Ranking from Sales ;

Use Shiva ;
Select * from sales ;

Select Gross_Sales,
Date,
Sum(Gross_Sales) Over (Order by Date Rows between Current row and 2 Following) TotalSales from Sales ;

Select Gross_Sales,
Date,
Sum(Gross_Sales) Over (Order by Date Rows between Current Row and Unbounded Following) Totalsales1 from sales
limit 3   ;

Select Gross_Sales,
Date,
Sum(Gross_Sales)
Over (Order by Date Rows Between 1 Preceding and Current Row) TotalSales2 from Sales
limit 5,10 ;


Select Gross_Sales from Sales ;

Select Gross_Sales,
Date,
Sum(Gross_Sales)
Over (Order by Date Rows between Unbounded preceding and Current row) from Sales Limit 15;


Select Gross_Sales,
Date,
Sum(Gross_Sales)
Over (Order by Date Rows between 1 Preceding and Current row ) from Sales limit 10 ;

Select Gross_Sales,
Date,
sum(Gross_Sales)
Over (Order by Date Rows between 1 Preceding and 1 following ) from sales limit 5 ;

Select * from sales ;

Select 
Order_ID,
Date,
Region,
Category,
Product,
Gross_Sales,
Sum(Gross_Sales) over (Partition by Date Rows between 1 preceding and 1 following ) from Sales limit 10 ;

use Sales ;

Select * from sales1 ;

Select 
Region,
Category,
Unit_Cost,
Total_Sales,

Sum(Total_Sales) Over (Partition by Category Order by Category) Category_1 from Sales1;

Select
Region,
Category,
Unit_Cost,
Total_Sales,

Sum(Sum(Total_Sales) over (Partition by Category)) Over (Partition by category) Total_sales from Sales1; 


Select * from Sales1 ;

Select 
Region
Unit_Cost,
Unit_Price,
Category,
Total_Sales,
Sum(Total_Sales) Over (Partition by Category Order By Region) from sales1
Where Region in ('North', 'South') ;

Select
Category,
Unit_Cost,
Unit_Price,
Sum(Unit_Cost) TotalSales,
Rank() Over (Order by Unit_Price desc) Total_Unit_PRice from sales1 
Group by Category ;

use Sales ;
Select * from sales1 ;

SELECT 
Region,
Sales_Rep,
Category,
Sum(Total_Sales) Total_Sales1,
Rank() over (Order by sum(Total_Sales) Desc) RankCategory
from sales1 
Group by Region ,Sales_Rep, Category ;

Select * from Sales1 ;

Use Sales ;

Select * from sales1 ;

Select 
Region,
Sales_Rep,
Category,
Total_Sales from Sales1 
Group by category,Sales_rep, Region, Total_Sales;

Select
Region,
Sales_Rep,
category,
Total_Sales,
Count(Category) over (Partition By Category  Order by Category) TotalSales1
from sales1 ;


Select 
Count(*) Total_Sales
from Sales1 ;

Select * from sales1 ;

Select 
Region,
Sales_Rep,
Total_Sales,
Count(*) over() Total_Sales1
from sales1 ;

Select * from Sales1 ;


Alter Table Sales1 add Column Id int First ;

Alter Table Sales1 Modify Column ID int Auto_Increment Primary Key;

Select * from Sales1 ;

Select 
ID,
Region,
Sales_Rep,
Category,
Product,
Count(*) over() TotalCustomers,
Count(Total_Sales) over(Partition by Category) Totalcustomers1 
from Sales1 ;


Select * from sales1 ;

select 
*,
Count(*) Over() Total_Sales,
Count(1) over() Total_Sales1,
Count(Category) Over()  Category
from Sales1 ;

Select ID,
Count(*) Over(Partition by ID) ID_1 
from sales1 ;

Use sales ;
Select * from customer_sales_data_with_duplicates ;

Rename Table customer_sales_data_with_duplicates to Customers ;

Select * from Customers ;

Select
*
from
(
Select 
Order_ID,
Customer_Name,
Product,
Category,
Count(*)
over (Partition by Order_ID) as duplicate_count  from Customers)
as t where t.duplicate_count >1 ;


Select * from customers ;

Select 
Order_ID, 
Order_Date,
Quantity,
sum(Quantity) over () Total_Quantity,
sum(Quantity) over (Partition by Quantity) Total_Quantity1 
from customers ;

Select 
Order_ID,
Order_Date,
Quantity,
Sum(Quantity) over () Total_Quantity,
cast(Quantity as Float) / Sum(Quantity) over() * 100 Percentage_of_product from Customers ;


Use Sales ;
Select
Order_ID,
Order_Date,
Quantity,
Sum(Quantity) over() TotalSales ,
Round(Cast(Quantity as Float) / Sum(Quantity) over() * 100,2) Percentage_of_Total from Customers ; 


Select * from Customers ;

Select 
Order_ID,
Customer_ID,
Total_Amount,
Avg(Total_Amount) over() Customers_Amount
from Customers ;



Select 
Order_ID,
Customer_ID,
Total_Amount,
Coalesce(Total_Amount,0)  AverageAmount,
Avg(Total_Amount) over() AverageScore,
Avg(Coalesce(Total_Amount,0)) over() Averagescore1 from customers ; 


Use sales ;
Select * from Sales1 ;



Select * from

(
Select 
ID,
Region,
Sales_Rep,
Category,
Total_Sales,
Total_Cost,
avg(Total_Sales) over () as Average_Total_Sales from Sales1 )
as t where Total_Sales > Average_Total_Sales ;


Select 
*,
Concat(Unit_Cost * 100, '%') Unit_Total_Cost
From
(
Select 
ID,
Region,
Sales_Rep,
Category,
Product,
Total_Sales,
Percent_Rank() over (Order by Total_Sales  Desc) Dist1
from 






Select * from customers ;


Select 
Order_ID,
Product,
Category,
Total_Amount,
Max(Total_Amount) over() Maximum_Total_Amount,
Min(Total_Amount) over() Minimum_Total_Amount ,
Max(Total_Amount) Over(Partition by Category) Category_Total_Amount,
Min(Total_Amount) Over(Partition by Category) Category_Total_Amount
from Customers
;


Select * from Customers ;

Select 

* ,

max(Total_Amount) over() Highest_Amount
from customers ;

Select * from Customers ;

Select * from
(
Select *,
Max(Total_Amount) over() Highest_Salary
from customers)
as t where Total_Amount = Unit_Price;

Select * from customers ;

Select
Order_ID,
Product,
Quantity,
Total_Amount,
Max(Total_Amount) over() Maximum_Amount,
Min(Total_Amount) Over() Minimum_Amount,
Total_Amount - Min(Total_Amount) over() Deviation
from customers ;

Select * from Customers ;

Select 
Order_Id,
Order_Date,
Product,
Total_Amount,

Max(Total_Amount) over() Max_Total,
Min(Total_Amount) over() Min_Total,
Max(Total_Amount) over() - Total_Amount TotalAmount1
from customers ;


Select * from Customers ;

Select
Order_ID,
Product,
Unit_Price,
Total_Amount,
Row_number() over ( Order by Total_Amount Desc) Total1 from Customers ;


Use Sales ;
Select * from Customers ;

Select
Order_ID,
Customer_Name,
Product,
Quantity,
Row_Number() over(Order by Product Desc) Number1 from customers ;


Select 
Order_ID,
Customer_Name,
Product,
Quantity,
Row_Number() Over(Order by Quantity Asc) R1,
Rank() over(Order by Quantity asc) R2
from Customers ;


Select Count(Quantity) from Customers ;
 
Select 
Order_ID,
Customer_Name,
Product,
Quantity,
Dense_Rank() Over (Order by Customer_Name Desc) User1 from Customers;

Select * from Customers ;

Select 
Order_ID,
Customer_NAME,
Product,
Unit_Price,
Quantity,

Row_Number() Over(Partition by Product Order By Unit_Price Desc)Increased_Amount from Customers ;

Select * from Customers ;


Select * from
(
Select Order_ID,
Customer_Name, 
Product, 
Unit_Price ,
Quantity,
Row_Number() Over(Partition by Product Order by Unit_Price ) Increased_Amount1 from Customers)Hello where Increased_Amount1 = 1  ;
Select * from Customers ;

Select *  from
(
Select Order_ID,
Customer_Name,
Product,
Unit_Price,
Sum(Unit_Price) Total_Unit_Price,
Row_Number() Over(Order by Sum(Unit_Price)) Unit_Price_1 from Customers 
Group by Order_ID, Customer_Name ,Product, Unit_Price )t where  t.Unit_Price_1 >= 5 ;


Use Sales ;

Select * from Sales1 ;

Select 
Row_Number() Over(Order by ID, Region)as  UniqueID,
Sales1.*
from Sales1 ;

Select * From Customers ;
Use Sales ;
Select 
Row_Number() Over(Partition by Product Order by Customer_ID Desc)Row1,
Customers.* from Customers ;

Use Sales ;

Select * from customers ;

Select 
Order_ID,
Order_Date,
Customer_ID,
Product,
Ntile(4) over (Partition by Product order by Order_ID Desc) Hello from Customers ;

Select
Order_ID,
Order_Date,
Customer_ID,
Product,
Ntile(4) over (Partition by Product order by Order_ID Desc) Hello_1 ,
Ntile(3) over (Partition by Product order by Order_Id Desc) Hello_2 ,
Ntile(2) over (Partition by Product order by Order_Id Desc) Hello_3
from Customers ;

SELECT 
    OrderID,
    Sales,
    Buckets,
    CASE WHEN Buckets = 1 THEN 'High'
         WHEN Buckets = 2 THEN 'Medium'
         WHEN Buckets = 3 THEN 'Low'
    END AS SalesSegmentations
FROM (
    SELECT 
        OrderID,
        Sales,
        NTILE(3) OVER (ORDER BY Sales DESC) AS Buckets
    FROM Sales.Orders
) AS t;



Use Sales ;
Select * from Customers ;

Select
*,
Case when Buckets = 1 Then 'High'
When Buckets = 2 Then 'Medium'
When Buckets = 3 Then 'Low'
End SalesSegmentations
from (
Select 
Order_ID,
Unit_Price,
Ntile(3) over (Order by Unit_Price desc) Buckets
from Customers
)t ;



Select
Ntile(10) over (Order by Order_ID) Buckets,
Customers.* 
from Customers ;


Select 
Order_ID ,
Ntile(10) over (Order by Order_Id) Buckets,
Customers.*
from Customers ;

Select
Product,
Category,
Quantity,
Cume_Dist() over (Order by Product desc) Distrank
from Customers ;

Select * from Sales1 ;


Select
*,
Concat(Total_Sales * 100, '%') Total1
From
(
Select
Product,
Unit_Cost,
Category,
Percent_Rank() over (Order by Total_Cost Desc) Dist1
from sales1 )t 
where Total_Sales <= 0.4  ;

Select * from Customers ;

Select 
  *,
  Concat(Total_Sales * 100, '%') Total1
From 
(
  Select 
    Product,
    Unit_Cost,
    Category,
    Percent_Rank() over (Order by Total_Cost Desc) Dist1
  from sales1 
) t
where Total_Sales <= 0.4 ;


Use Sales ;
Select * from Customers ;

Select 
* ,
Unit_Price - Total_Amount as Mom_Change
(Unit_Price - Total_Amount) / Total_Amount * 100
From
(
Select 
Month(Order_Date) OderMonth,
Sum(Quantity) TotalQuantity,
Lag (Sum(Quantity) Over (Order by Month(Order_Date)) PreviousmONTH
FROM Customers
Group by
month(Order_Date)
)t ;

Use Sales ;

Select * from customers ;

Select 
Order_ID,
Customer_ID,
Category,
Quantity,
Lead (Quantity) over(Partition by Product order by Quantity)ascending  from customers 
Order by Product, Quantity ;

Select * from Customers ;


Select 
Order_Date,
Order_ID,
Customer_ID,
Category,
Quantity,
Lead (Order_Date) over(Partition by Product order by Quantity asc) Ascending ,
datediff(Lead(Order_Date) over (Partition by Product order by quantity desc) ,Order_date )Descending from Customers
Order by Order_Date, Quantity ;


Select * from Customers ;


SELECT 
    Order_Date,
    Order_ID,
    Customer_ID,
    Category,
    Quantity,
    LEAD(Order_Date) OVER (
        PARTITION BY Product 
        ORDER BY Quantity ASC
    ) AS Next_Order_Date,
    
    DATEDIFF(
        LEAD(Order_Date) OVER (
            PARTITION BY Product 
            ORDER BY Quantity DESC
        ), 
        Order_Date
    ) AS Days_Difference
FROM Customers
ORDER BY Order_Date, Quantity;

select * from customers ;


Select
Order_ID,
Avg(Unit_Price) Average_Unit_Price,
Rank() Over(Order by Avg(Unit_Price))Rank_Avg
from
(Select 
Order_Date,
Unit_Price,
Order_ID,
Customer_ID,
Category,
Quantity,
Lead (Order_Date) over(Partition by Product order by Quantity asc) Ascending ,
datediff(Lead(Order_Date) over (Partition by Product order by quantity desc) ,Order_date )days from Customers)
t Group by Order_Date, Unit_Price, Order_ID, Customer_ID, Category, Quantity ;

Select
Order_ID,
Avg(Unit_Price) Average_Unit_Price ,
Row_Number() Over(Order by Coalesce(Avg(Unit_price), 999999)) RankAvg
from
(
Select
Order_Date,
Unit_Price,
Order_ID,
Customer_Id,
Category,
Quantity,
Lead (Order_Date) Over(Partition by Product Order by Quantity asc) AS Ascending,
Datediff(Lead(Order_Date) Over (Partition by Product Order by Quantity desc), Order_Date) days from Customers)
t
Group by
 Order_Date, Unit_Price, Order_ID, Customer_Id, Category, Quantity ;

Select * from Customers ;

SELECT 
    Order_Date,
    Unit_Price,
    Order_ID,
    Customer_Id,
    Category,
    Quantity,
    Row_Number() OVER (ORDER BY COALESCE(AVG(Unit_Price), 999999)) AS RankAvg,
    LEAD(Order_Date) OVER (PARTITION BY Category ORDER BY Quantity ASC) AS Ascending,
    DATEDIFF(
        LEAD(Order_Date) OVER (PARTITION BY Category ORDER BY Quantity DESC), 
        Order_Date
    ) AS days
FROM Customers
GROUP BY Order_Date, Unit_Price, Order_ID, Customer_Id, Category, Quantity;

Select * from Customers ;

Select
Order_Id,
Order_Date,
Customer_Name,
Category,
Quantity,
Unit_Price,
First_Value(Unit_Price) over (Partition by Category order by Unit_Price) Unit1 from Customers ; 


Use Sales ; 

Select * from customers ;


Select
Order_ID,
Order_Date,
Product,
Unit_Price,
last_Value(Unit_Price) Over (Partition by Category Order by Unit_Price Rows between Current Row and Unbounded Following)
from Customers ;


Select
Customer_Name,
Product,
Unit_Price,
First_Value(Unit_Price) over(Partition by Product Order by Unit_Price) unit1,
Last_Value(Unit_Price) over(Partition by Product order by Unit_Price Rows between Unbounded Preceding and Unbounded Following ) Unit2,
Max(Unit_Price) over(Partition by Product order by Unit_Price) Unit3,
Min(Unit_Price) over(Partition by Product order by Unit_Price) Unit4
from customers ;


Select * from customers ;


Select 
Customer_Name,
Product,
Unit_Price,
First_Value(Unit_Price) Over(Partition by Category order by Unit_Price) Unit_1,
Last_Value(Unit_Price) Over (Partition by Category Order by Unit_Price) Unit_2,
Unit_Price - Last_Value(Unit_Price) Over (Partition by Category Order by Unit_Price) Unit_3
from Customers ;


Select * from Customers ;
Select 
Customer_Name,
Product,
Unit_Price,
Row_Number() Over(Partition by Product Order by Unit_Price) Unit_4
From Customers ;


Select * from Customers ;

Select 
Customer_ID,
Customer_Name,
Category,
Unit_Price,
Sum(Unit_Price) over (Order by Unit_price rows between Unbounded Preceding and Unbounded Following )Sales2 from customers ; 

use Sales ;

Select * from Customers ;

Select Order_ID,
Customer_Name,
Unit_Price,
Sum(Unit_Price) over(Order by Unit_Price Rows between Current row and Current row) UnitPrice1
from Customers ;

Select * from customers ;

Select Order_ID,
Customer_Name,
Unit_Price,
Sum(Unit_Price) over(Order by Unit_Price asc Rows between Current row and Unbounded Following  ) Unit3 from Customers ;

Select Order_ID,
Customer_Name,
Unit_Price,
Sum(Unit_Price) over(Order by Unit_Price asc Rows between Unbounded preceding and Current Row) Unit4 from Customers ;

Select Order_ID,
Customer_Name,
Unit_Price,
Sum(Unit_Price) over(Order by Unit_Price asc Range between Current row and Unbounded following) unit5 from Customers ;

Use Sales ;

Select * from customers;
Select
Product,
Category,
Quantity,
Unit_Price,
Sum(Unit_Price) over(Order by Category asc rows between current row and 2 following) as Unit_Categrory
from Customers ;

Select * from Customers ;

Select
Customer_ID,
Customer_Name,
Product,
Category,
Unit_Price,
Avg(Unit_Price) over(Order by Category asc rows between Current row and 1 following) as Avg_Unit_Price
from Customers ;


Select 
Customer_ID,
Customer_Name,
Product,
Category,
Unit_Price,
sum(Unit_Price) over (Order by Category asc Rows between Current row and 5 following) as Unit7
from Customers ;


Select
Customer_ID,
Customer_Name,
Product,
Category,
Unit_Price,
Nth_Value(Unit_Price,4)
over(Order by Product asc 
Rows between Current row and Unbounded Following) as Unit_8 from Customers ;

Select 
Customer_ID,
Customer_Name,
Product,
Category,
Unit_Price,
Count(*)
over(order by Product desc Rows between current row and unbounded following) as unit_9 from customers ;


Select
Customer_Id,
Customer_Name,
Product,
Unit_Price,
Count(*) over (
Partition by Product 
order by Customer_Id asc Rows between Current Row and Unbounded following) as User_1
from Customers ;

Select
Distinct Unit_Price
from Customers ;


Use Sales ;
Select * from Customers ;

With Total_Sales as (
Select 
Order_ID,
Sum(Unit_Price) as Total_Unit_Price
from 
Customers
Group By
order_ID
)
Select
Order_ID,
Total_Unit_Price
from
Total_Sales
where Total_Unit_Price > 1200 ;

Select * from Customers ;

With Total as(
Select
Product,
sum(Quantity) as Quantity1
from 
Customers
Group by Product
)
Select 
Product,
Quantity1
from 
Total
where Quantity1 > 4 ;

use Sales ;
Select * from Customers ;

With Customer1 as (
Select 
Customer_ID,
Product,
Quantity,
Max(Unit_Price) as Max_Unit_Price
from customers
group by Product,Unit_Price, Customer_ID,Quantity
)
select  Customer_ID ,
Product,
Max_Unit_Price
from Customer1 ;


use sales ;
Select * from customers ;

Create database Credit ;
use credit ;
Select * from credit1 ; 

use credit ;

Select * from credit1 ;


















