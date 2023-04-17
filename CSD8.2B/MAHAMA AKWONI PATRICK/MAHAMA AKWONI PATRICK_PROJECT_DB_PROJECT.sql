create schema project;

create table projectstudent(
studentid varchar(100) not null primary key,
lastname varchar(100) default null,
othernames varchar(100) default null,
dob varchar(15) default null,
groupleader varchar(100) default null
);
drop table projectstudent;
select * from projectstudent;
insert into projectstudent( studentid,lastname,othernames,dob,groupleader)values('S003','KOFI','MENSAH','12/04/1990',"=");

create table projectsupervisor(
supervisorid varchar(100) not null primary key,
lastname varchar(100) default null,
othernames varchar(100) default null
);

select * from projectsupervisor;
insert into projectsupervisor(supervisorid,lastname,othernames)values('L002','SEEWAN','ABENA');


create table projectdescription(
projectid varchar(100) not null primary key,
projecttitle varchar(100) default null,
projectsummary varchar(100) default null,
supervisorid varchar(100) default null,
foreign key (supervisorid) references projectsupervisor (supervisorid)
);
select * from projectdescription;

insert into projectdescription(projectid,projecttitle,projectsummary,supervisorid)
values('P002','TAX MONITOR','System to generate TAX liability of individual and organizations','L002');


create table projectsubmissions(
projectid varchar(100) default null,
componentsubmitted varchar(100) default null,
datesubmitted varchar(20) default null,
foreign key (projectid) references projectdescription (projectid)
);
alter table projectsubmissions
add Review_Remarks varchar(100);

select * from projectsubmissions;
update projectsubmissions set datesubmitted=current_timestamp where projectid='P001'; 
update projectsubmissions set datesubmitted=current_timestamp where projectid='P002';

update projectsubmissions set review_remarks='pending' where projectid= 'P001';
update projectsubmissions set review_remarks='pending' where projectid= 'P002';
insert into projectsubmissions(projectid,componentsubmitted,datesubmitted)values('P002','Literature Review','5/4/2012');

create table projecteam(
projectid varchar(100) not null primary key,
studentid varchar(100) default null,
foreign key(projectid) references projectdescription (projectid),
foreign key(studentid) references projectstudent (studentid)
);

select * from projecteam;

insert into projecteam(projectid,studentid)values('P002','S002');