--ASSIGNMENT
-- creating products table
create table products(
		     product_id varchar(30),
		     product_name varchar(30),
		     product_description varchar(30),
		     price decimal(10, 2),
             primary key(product_id)
		);

-- creating product_category table
create table product_category(
		     category_id varchar(30),
		     product_id varchar(30),
	products	     category_name varchar(30),
             PRIMARY KEY(category_id)
		);


-- make product_id a foreign key
ALTER TABLE product_category ADD CONSTRAINT fk_product_id_product_category FOREIGN KEY (product_id) REFERENCES products(product_id);

-- changing price column to product_price
ALTER TABLE products 
RENAME COLUMN price TO product_price;


--inserting data into products table
insert into products(product_id, product_name, product_description, product_price ) 
                values ('SAM001', 'SAMSUNG GALAXY A51', 'SAMSUNG GALAXY A51 HAS QUALITY CAMERA', 2000.40);

--changing character size
ALTER TABLE products
MODIFY product_description
varchar(200);


--inserting data into products table
insert into products(product_id, product_name, product_description, product_price ) 
                values ('HP002', 'HP LATOP', 'HP LAPTOPS ARE AFFORDABLE AND EASY TO USE', 7500.55);
     
     --inserting data into products table
insert into products(product_id, product_name, product_description, product_price ) 
                values ('LG003', 'LG TELEVISION', 'LG TELEVISIONS ARE VERY STRONG AND AFFORDABLE', 4750.77);
                
                
                --inserting data into product_category table
    insert into product_category(category_id, product_id, category_name ) 
                values ('PHONE001', 'SAM001', 'LAPTOPS'); 
                
           update product_category set category_name = 'PHONES' where category_id = 'PHONE001';     


 --inserting data into product_category table                
      insert into product_category(category_id, product_id, category_name ) 
                values ('LAPTOP002', 'HP002', 'LAPTOPS'); 
        
         --inserting data into product_category table
insert into product_category(category_id, product_id, category_name ) 
                values ('TV003', 'LG003', 'TELEVISIONS'); 
                
                
                --CHANGING THE PRICE OF HP LATOPS
 update products set product_price = 15000.22 where product_id = 'HP002';                 
                
     --END OF ASSIGNMENT           
                
                
                
                
                
                
                
                
                
                
                
                


		insert into students(student_id, student_name, date_of_birth, email, phone ) 
                values ('CSD4.2M002', 'Jonas Adogbongo', 1990-12-17, 'jonas@hotmail.com', 0206873453);

		--  CREATING OF STUDENTS TABLE
			
		create table students(
		     id int PRIMARY KEY AUTO_INCREMENT,
		     student_id varchar(50),
		     student_name varchar(50),
		     dob date,
		     email varchar(50),
		     phone int(20)
		);


		--  ADDING A COLUMN TO AN EXISTING TABLE
		
		alter table students add (created_at timestamp);

		
		alter table students add (date_of_birth varchar(50));



		--  DROPPING A COLUMN

		alter table students drop column dob;




		--  INSERTING RECORDS OR VALUES INTO STUDENTS TABLE
		
		insert into students(student_id, student_name, date_of_birth, email, phone ) 
                values ('CSD4.2M001', 'Robert Bazuku', 1978-02-26, 'robert@gamil.com', 0541547251);

		insert into students(student_id, student_name, date_of_birth, email, phone ) 
                values ('CSD4.2M002', 'Jonas Adogbongo', 1990-12-17, 'jonas@hotmail.com', 0206873453);

		insert into students(student_id, student_name, date_of_birth, email, phone ) 
                values ('CSD4.2M003', 'Ishaw Yidana', 1999-04-11, 'yidana@yahoo.com', 0593678923);




		--  UPDATE A SINGLE COLUMN

		update students set date_of_birth = '2000-01-01' where id = 3;


select * from students;

create table PRODUCTS(
		     product_id int PRIMARY KEY AUTO_INCREMENT,
		     product_name varchar(50),
		     product_description varchar(50),
		     );














