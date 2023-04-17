SELECT * FROM csd.product_category;
-- creating a new table
INSERT INTO product_category  VALUES ('phone001','sam001','phones');
INSERT INTO product_category  VALUES('laptop002','hp002', 'laptops' );
insert into product_category values('tv003','lg003','televisions');
create table product_category (
category_ID varchar(100) PRIMARY KEY,
product_id varchar(100),
category_name varchar(100),
CONSTRAINT FK_product_ID  FOREIGN KEY (product_ID) REFERENCES product_category (product_ID)
);
 