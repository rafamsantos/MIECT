go
create schema companyP3
go
create table companyP3.employee(
ssn		varchar(9),
name	varchar(30) not null,
dno		int not null,
primary key(ssn)
)

create table companyP3.department(
dnumber int, 
dname	varchar(30),
mgr_ssn	varchar(9),
unique(dname),
primary key(dnumber)
)

alter table companyP3.departments add constraint FK_MGREMP foreign key(mgr_ssn) references companyP3.employee(ssn)
alter table companyP3.employee add constraint FK_DNODEPT foreign key (dno) references companyP3.department(dnumber)