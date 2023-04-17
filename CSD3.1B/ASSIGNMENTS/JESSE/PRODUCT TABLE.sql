select * from product;
INSERT INTO product values ('sam001','samsung galaxy a1',2000.40, 'samsung galaxy a51 has quality camera');
INSERT INTO product VALUES('hp002','hp laptop', 7500.55, 'hp laptoms are very affordable and easy to use');
INSERT INTO product VALUES('lg003','lg television', 4750.77, 'lg televisions are very strong and affordable');
create table product(
product_ID varchar(100) PRIMARY KEY,
product_name varchar(100),
price numeric(50),
product_description varchar(100)
CONSTRAINT FK_product_ID FOREIGN KEY(product_ID) REFERENCES product(product_ID)

);
select * from product;
alter table product
rename column price to product_price







