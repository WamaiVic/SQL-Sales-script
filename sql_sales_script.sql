-- 1.
select ProductID,sum(Amount) as Totalsales
from sales
group by ProductID;

-- 2
select date_format(SaleDate, '%Y-%m') as month, sum(Amount) as Monthlysales
from Sales
Group by date_format(saledate,'%y-%m');

-- 3
select customerID, count(SaleID) as PurchaseCount
from Sales
group by CustomerID
having count(SaleID) > 5;