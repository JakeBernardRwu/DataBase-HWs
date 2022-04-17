
create table if not exists Store.Customers
(
    `Customer ID` int  not null
        primary key,
    Name          text null
);

create table if not exists Store.Orders
(
    `Order ID` int not null
        primary key,
    constraint `Orders_Customers_Customer ID_fk`
        foreign key (`Order ID`) references Store.Customers (`Customer ID`)
);

create table if not exists Store.Products
(
    Product int not null
        primary key
);

create table if not exists Store.Association
(
    Product    int not null
        primary key,
    `Order ID` int null,
    constraint `Association_Orders_Order ID_fk`
        foreign key (Product) references Store.Orders (`Order ID`),
    constraint Association_Products_Product_fk
        foreign key (Product) references Store.Products (Product)
);


select *
from Products,Store.Orders,Store.Customers,Association;

select *
FROM Association
Where `Order ID`;
