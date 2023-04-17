---EXAM

CREATE TABLE ProjectStudent (
    STUDENT_ID VARCHAR(100)Primary key,
    LastName VARCHAR(100),
    OtherNames Varchar (100),
    DOB VARCHAR(20),
    GoupLeader VARCHAR (100)
);

Insert into ProjectStudent Values ('S001', 'Kofi', 'Ama', '12/01/1990', '');
Insert into ProjectStudent Values ('S002', 'Kwaku', 'Abi', '12/04/1990', 'P001');
Insert into ProjectStudent Values ('S003', 'Mensah', 'Kofi', '12/04/1990', '');
Insert into ProjectStudent Values ('S004', 'Mensah', 'Kofi', '12/04/1990', '');

select * from projectstudent;


CREATE TABLE ProjectSupervisor (
    Supervisor_ID VARCHAR(50)Primary key,
    LastName VARCHAR(100),
    OtherNames Varchar (100)
);

select * from projectsupervisor;

Insert into projectsupervisor Values ('L001', 'King', 'Wink');
Insert into projectsupervisor Values ('L002', 'King', 'Wink');
Insert into projectsupervisor Values ('L003', 'Abena', 'Seewan');
Insert into projectsupervisor Values ('L004', 'Abena', 'Seewan');

CREATE TABLE ProjectTeam (
    ProjectID VARCHAR(50)Primary Key,
    STUDENT_ID VARCHAR(100)
);

Insert into projectTeam Values ('P001', 'S001');
Insert into projectTeam Values ('P002', 'S002');
Insert into projectTeam Values ('P003', 'S003');
Insert into projectTeam Values ('P004', 'S004');

select * from projectTeam;

CREATE TABLE ProjectDescription (
    ProjectID VARCHAR(100)Primary key,
    ProjectTitle VARCHAR(100),
    ProjectSummary VARCHAR(100),
   Supervisor_ID Varchar (100), 
   CONSTRAINT FK_Supervisor_ID FOREIGN KEY(Supervisor_ID) REFERENCES ProjectSupervisor (Supervisor_ID) ON DELETE CASCADE
);

Insert into projectDescription Values ('P001', 'Student Registration', 'Manage Students Registration', 'L001');
Insert into projectDescription Values ('P002', 'Student Registration', 'Manage Students Registration', 'L002');
Insert into projectDescription Values ('P003', 'Tax Monitoring', 'System to generate Tax liability of individual and Organisations', 'L003');
Insert into projectDescription Values ('P004', 'Student Registration', 'Manage Students Registration', 'L004');

select * from projectdescription;


CREATE TABLE ProjectSubmission (
    ProjectID VARCHAR(100),
    ComponentSubmitted VARCHAR(100),
    DateSubmitted VARCHAR(100),
    CONSTRAINT FK_ProjectID FOREIGN KEY(ProjectID) REFERENCES ProjectDescription (ProjectID) ON DELETE CASCADE
);

Insert into projectSubmission Values ('P001', 'Project Proposal', '3/3/2012', 'Accepted with Corrections');
Insert into projectSubmission Values ('P002', 'Project Proposal', '3/3/2012','Pending');
Insert into projectSubmission Values ('P003', 'Project Proposal', '3/3/2012','Rejected');
Insert into projectSubmission Values ('P004', 'Literature Review', '5/4/2012','Accepted');

select * from projectSubmission;

Drop Table ProjectSubmission;

Alter Table ProjectSubmission
Add (ReviewRemarks Varchar (100));
