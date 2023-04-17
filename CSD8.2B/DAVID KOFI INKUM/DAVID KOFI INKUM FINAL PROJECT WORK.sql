create schema project;
create table student(
StudentID varchar(100) not null primary key,
Lastname varchar(100) default null,
OtherNames varchar(100) default null,
DOB date default null,
GroupLeader varchar(100) null);
select * from student;

create table Description(
ProjectID varchar(100) not null primary key,
ProjectTitle varchar(100) default null,
ProjectSummary varchar(100) default null,
SupervisorID varchar(100) default null,
StudentID varchar(100) default null,
constraint fk_StudentID foreign key(StudentID) references Student(StudentID),
constraint fk_SupervisorID foreign key(SupervisorID) references Supervisor(SupervisorID)
);

create table Supervisor(
SupervisorID varchar(100) not null primary key,
lastname varchar(100) default null,
OtherNames varchar(100) default null);

create table Submissions(
SubmissionID int(100) not null primary key auto_increment,
ProjectID varchar(100) default null,
ComponentSubmitted varchar(100) default null,
DateSubmitted timestamp default current_timestamp,
constraint fk_PrjectID foreign key(ProjectID) references Description(ProjectID));

alter table submissions
add column(remark varchar(100));

select * from description;
select * from student;
select * from submissions;
select * from supervisor;

