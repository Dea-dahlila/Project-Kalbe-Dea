-- rata-rata umur customer jika dilihat dari marital status
select "Marital Status", round(avg(Age)) as avg_age_MaritalStatus
from customer
group by 1

-- rata-rata umur jika dilihat dari gender
select Gender, avg(Age) as avg_age_gender
from customer
group by 1

-- nama store dengan total quantity terbanyak
select StoreName, sum(Qty) as High_Quantity
from transaction as t
join store as s 
on t.StoreID = s.StoreID
Group by 1
order by 2 desc
limit 1

-- nama product terlaris dengan total amount terbanyak
select sum(TotalAmount) as High_Amount, p."Product Name"
from transaction as t
join product as p
on t.ProductID = p.ProductID
Group by 2
order by 1 desc
limit 1



