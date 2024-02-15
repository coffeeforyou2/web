
CREATE table movieCenter(
CGVCenter VARCHAR(255),
CGVCity VARCHAR(255),
CGVURL VARCHAR(255)
);

create table cgv_movie(
mvrank int primary key,
mvScore varchar(255),
mvtitle varchar(255),
mvDirectorName varchar(255),
mvActors varchar(255),
mvinfo varchar(255),
mvReleaseDate varchar(255),
mvgenre varchar(255),
mvpos varchar(255)
);

create table cgv_member  (
   mbId varchar(25) primary key,
   mbPw varchar(25) not null,
   mbIrum varchar(100) not null,
   mbEmail varchar(100) not null,
   mbBirthYear varchar(4) not null,
   mbPoint int not null,
   mbAdmin varchar(1)
);
select * from cgv_member;
select * from cgv_movie;
select * from cgv_name;
select * from movieCenter;