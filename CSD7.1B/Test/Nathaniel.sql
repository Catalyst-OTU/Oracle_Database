-- AKANLU N. ADEWUYI
-- AITI SQL CLASS TEST
 
create schema `class`;
create table products(
product_id int auto_increment primary key,
product_name varchar(50),
product_description varchar(50),
price varchar(50)
);
select * from products;

-- RENAMING COLUMN PRICE TO PRODUCT_PRICE
alter table products rename column price to product_price; 

-- ADDING DATA TO PRODUCTS TABLE
insert into products(product_id,product_name,product_description,product_price)
values('001','SAMSUNG GALAXY A51','SAMSUNG GALAXY A51 HAS QUALITY CAMERA','2000.40'); 

insert into products(product_id,product_name,product_description,product_price)
values('002','HP LAPTOP','HP LAPTOPS ARE AFFORDABLE AND EASY TO USE','7500.55'); 

insert into products(product_id,product_name,product_description,product_price)
values('003','LG TELEVISION','LG TELEVISIONS ARE VERY STRONG AND AFFORDABLE','4750.77');

-- CHANGING THE PRICE OF HP LAPTOP FROM 4750.77 TO 15000.22
update products set product_price = 15000.22 where product_id = 2;


-- CREATING PRODUCT_CATEGORY TABLE
create table product_category(
 category_id int auto_increment primary key,
 product_id int(50),
 category_name varchar(50)
 
 );
 select * from product_category; 
 
 -- INSERT INTO PRODUCT_CATEGORY TABLE
 insert into product_category(category_id,product_id,category_name)
values('001','001','PHONES'); 

 insert into product_category(category_id,product_id,category_name)
values('002','002','LAPTOPS'); 

 insert into product_category(category_id,product_id,category_name)
values('003','003','TELEVISIONS'); 

