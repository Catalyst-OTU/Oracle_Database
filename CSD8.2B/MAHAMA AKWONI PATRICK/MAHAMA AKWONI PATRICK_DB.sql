create schema enterprise;
create table client_master(
no int(100) not null primary key auto_increment,
client_no varchar(100) default null,
name varchar(100) default null,
city varchar(100) default null,
region varchar(100) default null,
baldue int(100) default null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

insert into client_master(client_no,name,city,region,baldue)
values('C0004','Emmanuella Osei','Ho','Volter',0);
select * from client_master;
delete from client_master where client_no='C0002' and no=3;

select * from client_master where city='Accra';
update client_master set no=3 where no=4;

alter table product_master
rename column descp to description;
update client_master set baldue= '100' where no=5;
alter table client_master
add column(Telephone int(20) default null);

alter table client_master
drop column baldue;





create table product_master(
no int(100) not null primary key auto_increment,
product_no varchar(100) default null,
descp varchar(100) default null,
profit_pct int(100) default null,
sell_price int(100) default null,
cost_price int(100) default null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

insert into product_master(product_no,descp,profit_pct,sell_price,cost_price)values('P0004','Trousers',300,850,550);
select * from product_master;
select * from product_master where sell_price between 500 and 1000;
update product_master set sell_price=950 where no=3;

delete from product_master where no=3;
alter table product_master rename to PCT_MAST;





create table sales_master(
no int(100) not null primary key auto_increment,
salesman_no varchar(100) default null,
name varchar(100) default null,
city varchar(100) default null,
region varchar(100) default null,
salary int(100) default null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

insert into sales_master(salesman_no,name,city,region,salary)values('S0005','Marry Ann','Accra','Greater Accra',5500);
select * from sales_master;

select *  from sales_master where salary>3500;


create table client_master(
no int(100) not null primary key auto_increment,
client_no varchar(100) default null,
name varchar(100) default null,
city varchar(100) default null,
region varchar(100) default null,
baldue int(100) default null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);