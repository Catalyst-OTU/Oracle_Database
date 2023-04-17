-- FINAL SQLDATABASE EXAMINATION

  create schema `Project`;

-- CREATING TABLE FOR PROJECTSTUDENT 

create table ProjectStudent(
Student_ID varchar(50) primary key,
Student_name varchar(50),
Student_DOB varchar(50),
Group_leader varchar(50)
);

select * from ProjectStudent;

insert into ProjectStudent(Student_ID,Student_name,Student_DOB,Group_leader)
values('S001','Kofi Ama','12/01/1990','not null'); 

insert into ProjectStudent(Student_ID,Student_name,Student_DOB,Group_leader)
values('S002','Kwaku Abi','12/04/1990','P001'); 

insert into ProjectStudent(Student_ID,Student_name,Student_DOB,Group_leader)
values('S003','Mensah Kofi','12/04/1990','not null'); 

insert into ProjectStudent(Student_ID,Student_name,Student_DOB,Group_leader)
values('S004','Mensah Kofi','12/04/1990','not null'); 


-- CREATING TABLE FOR PROJECTTEAM 

create table projectteam(
Project_ID varchar(50) primary key,
Student_ID varchar(50)
 );
 
 select * from projectteam;
 
insert into projectteam(Project_ID,Student_ID)
values('P001','S001');  
 
 insert into projectteam(Project_ID,Student_ID)
values('P002','S002');  

insert into projectteam(Project_ID,Student_ID)
values('P003','S003');  

insert into projectteam(Project_ID,Student_ID)
values('P004','S004');  
 
  
  -- FOREIGN KEY PROJECTTEAM TO PROJECTSTUDENT

alter table ProjectTeam add constraint fk_Student_ID foreign key(Student_ID) references ProjectStudent(Student_ID);

select * from projectStudent;


-- CREATING TABLE PROJECTSUPERVISOR

create table ProjectSupervisor(
Supervisor_ID varchar(50) primary key,
Supervisor_name varchar(50)
 );

insert into ProjectSupervisor(Supervisor_ID,Supervisor_name)
values('L001','King WINK');  

insert into ProjectSupervisor(Supervisor_ID,Supervisor_name)
values('L002','King WINK'); 

insert into ProjectSupervisor(Supervisor_ID,Supervisor_name)
values('L003','Abena SEEWAN'); 

insert into ProjectSupervisor(Supervisor_ID,Supervisor_name)
values('L004','Abena SEEWAN');  

select * from ProjectSupervisor;


-- CREATING TABLE PROJECTDESCRIPTION

create table projectdesription(
Project_ID varchar(50) primary key,
ProjectTitle varchar(50),
ProjectSummary varchar(50),
Supervisor_ID varchar(50)
 );
 
insert into projectdesription(Project_ID,ProjectTitle,ProjectSummary,Supervisor_ID)
values('P001','Student Registration','Manage Students Registration','L001');  
 
insert into projectdesription(Project_ID,ProjectTitle,ProjectSummary,Supervisor_ID)
values('P002','Student Registration','Manage Students Registration','L002');  

insert into projectdesription(Project_ID,ProjectTitle,ProjectSummary,Supervisor_ID)
values('P003','TAX Monitor','System Tax liability','L003');  

insert into projectdesription(Project_ID,ProjectTitle,ProjectSummary,Supervisor_ID)
values('P004','TAX Monitor','System Tax liability','L004');  
 

select * from projectdesription;



-- FOREIGN KEY PROJECT DESCRIPTION TO PROJECT SUPERVISOR 
 
 alter table projectdesription add constraint fk_Supervisor_ID foreign key(Supervisor_ID) references ProjectSupervisor(Supervisor_ID);
 
 
 -- CREATING TABLE PROJECTSUBMISSIONS
 
 create table ProjectSubmissions(
Project_ID varchar(50) primary key,
ComponentSubmitted varchar(50),
DateSubmitted varchar(50)
 );
 
 select * from ProjectSubmissions;
 
 -- ADDING REVIEW REMARK TO PROJECT SUBMISSION TABLE
 
 alter table ProjectSubmissions add(Review_Remark varchar(50));

 
 select * from ProjectSubmissions;
 
insert into ProjectSubmissions(Project_ID,ComponentSubmitted,DateSubmitted,Review_Remark)
values('P001','Project Proposal','3/3/2012','Pending'); 

insert into ProjectSubmissions(Project_ID,ComponentSubmitted,DateSubmitted,Review_Remark)
values('P002','Project Proposal','3/3/2012','Accepted'); 

insert into ProjectSubmissions(Project_ID,ComponentSubmitted,DateSubmitted,Review_Remark)
values('L003','Project Proposal','3/3/2012','Rejected'); 

insert into ProjectSubmissions(Project_ID,ComponentSubmitted,DateSubmitted,Review_Remark)
values('L004','Project Proposal','5/4/2012','Literature Review'); 

 
 update projectsubmissions set datesubmitted = sysdate() where Project_ID = 'P001';

update projectsubmissions set datesubmitted = sysdate() where Project_ID = 'P002';

update projectsubmissions set datesubmitted = sysdate() where Project_ID = 'L003';

update projectsubmissions set datesubmitted = sysdate() where Project_ID = 'L004';
 
 select * from ProjectSubmissions;
 
 
 -- FOREIGN KEY PROJECTDESCRIPTION TO PROJECTSUBMISSION
 
  -- alter table projectdescription add constraint fk_Project_ID foreign key(Project_ID) references ProjectSubmissions(Project_ID);
  
  
  
