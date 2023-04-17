insert into projectstudent values ('S001','AMA','KOFI','12/JANUARY/1990','');
insert into projectstudent values ('S002','ABI','Kwaku','12/APRIL/1990','P001');
insert into projectstudent values ('S003','KOFI','MENSAH','12/APRIL/1990','');
insert into projectstudent values ('S004','KOFI','MENSAH','12/APRIL/1990','');

insert into projectteam values ('P001','S001');
insert into projectteam values ('P001','S002');
insert into projectteam values ('P002','S003');
insert into projectteam values ('P002','S004');

insert into projectdescription values ('P001','Student Registration','Manage Student Registration','L001');
insert into projectdescription values ('P002','Student Registration','Manage Student Registration','L001');
insert into projectdescription values ('P003','Tax Monitor','System to generate tax liability of individual and organizations','L002');
insert into projectdescription values ('P004','Tax Monitor','System to generate tax liability of individual and organizations','L002');

insert into projectsupervisor values ('L001','WINK','KING');
insert into projectsupervisor values ('L002','WINK','KING');
insert into projectsupervisor values ('L003','SEEWAN','ABENA');
insert into projectsupervisor values ('L004','SEEWAN','ABENA');

insert into projectsubmissions values ('P001','PROJECT PROPOSAL','03/MARCH/2012');
insert into projectsubmissions values ('P002','PROJECT PROPOSAL','03/MARCH/2012');
insert into projectsubmissions values ('P003','PROJECT PROPOSAL','03/MARCH/2012');
insert into projectsubmissions values ('P004','LITERATURE REVIEW','05/04/2012');

Alter table projectsubmissions drop column ReviewMarks;

DROP TABLE projectsubmissions;

alter table projectsubmissions add (ReviewMarks VARCHAR(100));
UPDATE projectsubmissions
SET ReviewMarks = 'Pending'
WHERE ProjectID = 'P001';

UPDATE projectsubmissions
SET ReviewMarks = 'Accepted'
WHERE ProjectID = 'P002';

UPDATE projectsubmissions
SET ReviewMarks = 'Pending'
WHERE ProjectID = 'P003';

UPDATE projectsubmissions
SET ReviewMarks = 'accepted with correction'
WHERE ProjectID = 'P004';