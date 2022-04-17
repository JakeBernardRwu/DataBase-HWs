
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

/*Indvidual delte */
delete from Store.Customers

where
Store.Customers.`Customer ID` = 3;
/*Group delte */

delete from Store.Customers
where Name;
/*Select Inner Join */
Select *
From Store.Products
Inner Join Store.Association
On Store.Products.Product = Store.Association.Product;

/*Select Inner Join where clause */
select *
From Store.Orders
Inner Join  Store.Orders
where `Order ID` = Store.Association.`Order ID`;
