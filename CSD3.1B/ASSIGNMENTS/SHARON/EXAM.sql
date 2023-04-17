CREATE TABLE ProjectStudent(
StudentID VARCHAR(100) PRIMARY KEY,
Lastname VARCHAR(100),
OtherNames VARCHAR(100),
DOB VARCHAR(100),
GroupLeader VARCHAR(100)
);

CREATE TABLE ProjectTeam (
ProjectID VARCHAR(100) PRIMARY KEY,
StudentID VARCHAR(100)
);


CREATE TABLE ProjectSupervisor( 
SupervisorID VARCHAR(100)PRIMARY KEY,
Lastname VARCHAR(100),
OtherNames VARCHAR(100)
);

CREATE TABLE ProjectDescription(
ProjectID VARCHAR(100) PRIMARY KEY,
ProjectTitle VARCHAR(100),
ProjectSummary VARCHAR(100),
SupervisorID VARCHAR(100)
);

CREATE TABLE ProjectSubmissions( 
ProjectID VARCHAR(100),
ComponentSubmitted VARCHAR(100),
DateSubmitted VARCHAR(100)
);

INSERT INTO ProjectStudent VALUES ('S001','Ama','KOFI','12-01-1990','');
INSERT INTO ProjectStudent VALUES ('S002','ABI','Kwaku','12-04-1990','');
INSERT INTO ProjectStudent VALUES ('S003','MENSAH','KOFI','12-01-1990','');

INSERT INTO ProjectTeam VALUES('P001','S001');
INSERT INTO ProjectTeam VALUES('P001','S002');
INSERT INTO ProjectTeam VALUES('P002','S003');
INSERT INTO ProjectTeam VALUES('P002','S003');

INSERT INTO ProjectSupervisor VALUES ('L001','WINK','King');
INSERT INTO ProjectSupervisor VALUES ('L002','SEEWAN','Abena');

INSERT INTO ProjectDescription VALUES ('P001','Student Registration','Manage Students Registration','L001');
INSERT INTO ProjectDescription VALUES ('P002','TAX Monitor','System to generate Tax liability of individual and organizations','L002');

INSERT INTO ProjectSubmissions VALUES ('P001','Project Proposal','3/3/2012');
INSERT INTO ProjectSubmissions VALUES ('P002','Literature Review','5/4/2012');

ALTER TABLE ProjectSubmissions
ADD (Review_Remark VARCHAR(100));

update ProjectSubmissions
SET REVIEW_REMARK = 'pending'
WHERE PROJECTID = 'P001';

update ProjectSubmissions
SET REVIEW_REMARK = 'pending'
WHERE PROJECTID = 'P002';

UPDATE ProjectSubmissions
SET DateSubmitted = SYSDATE;

select * from ProjectDescription;
select * from  ProjectStudent;
select * from ProjectTeam;
select * from ProjectSupervisor;
select * from ProjectSubmissions;







