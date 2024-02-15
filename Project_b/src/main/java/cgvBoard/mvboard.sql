


select * from mvboard;
CREATE SEQUENCE no_seq;

create table mvboard(
mvno number(10) primary key,
mvautor varchar(255) not null,
mvtitle varchar(500) not null,
mvcontent varchar(255) not null,
mvtype varchar(255) not null,
mvfile varchar(255),
mvtime TIMESTAMP DEFAULT SYSTIMESTAMP
);


CREATE SEQUENCE no_seq;
drop table mvboard;
drop SEQUENCE no_seq;