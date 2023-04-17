create schema Enterprise;

create table client_master(
No int(100) not null primary key auto_increment,
Client_no varchar(100) default null,
Name varchar(100) default null,
city varchar(100) default null,
Region varchar(100) default null,
Baldue double default null,
Created_at timestamp default current_timestamp,
Updated_at timestamp default current_timestamp on update current_timestamp
);

create table product_master(
No int(100) not null primary key auto_increment,
Product_No varchar(100) default null,
Descb varchar(100) default null,
Profit_PCT double default null,
Sell_Price double default null,
Cost_Price double default null,
Created_at timestamp default current_timestamp,
Updated_at timestamp default current_timestamp on update current_timestamp
);

create table sales_master(
No int(100) not null primary key auto_increment,
SalesMan_No varchar(100) default null,
Name varchar(100) default null,
City varchar(100) default null,
Region varchar(100) default null,
Salary double default null,
Created_at timestamp default current_timestamp,
Updated_at timestamp default current_timestamp on update current_timestamp
);


-- (QUESTION ONE) 

select * from client_master, pct_mast, sales_master;
select * from client_master;

-- (QUESTION TWO) 
select * from client_master where Region = 'Greater Accra';

-- (QUESTION THREE)
select * from sales_master where Salary > 3500;

-- (QUESTION FOUR)
update client_master set city = 'Nkawkaw' where No = 3;

-- (QUESTION FIVE)
alter table product_master
rename column Descb to Description;

-- (QUESTION SIX)
update client_master set Baldue = '100' where No = 4;

-- (QUESTION SEVEN)
select * from product_master where Sell_Price between 500 and 1000;

-- (QUESTION EIGHT)
update product_master set Sell_Price = '950' where No = 3;

-- (QUESTION NINE)
delete from product_master where No = 1;

-- (QUESTION TEN)
alter table client_master
add column(Telephone int(20));

-- (QUESTION ELEVEN)
alter table client_master drop column Baldue;

-- (QUESTION TWELVE)
alter table product_master rename pct_mast;





