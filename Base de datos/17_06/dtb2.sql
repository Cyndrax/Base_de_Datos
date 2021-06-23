create database databaseejer character set utf8;
use databaseejer;
create table ejempl(
idejemp int auto_increment,
primary key(idejemp),
nombre varchar(20),
fono int
);
create table cejemp2(
idekey int auto_increment,
primary key(idekey),
nombre varchar(20),
fono int
);
alter table ejempl add column apellido varchar(10);
alter table cejemp2 add column campo varchar(10);
alter table  cejemp2 modify campo double;
alter table ejempl modify fono double;
alter table cejemp2 drop column campo;
alter table ejempl drop column nombre;
alter table cejemp2 add column apellido varchar(20);
select * from ejempl;
insert into cejemp2 (apellido,fono)
values("Miranda",1234567);
insert into cejemp2(apellido,fono)
values("rodriguez",23445667);
insert into cejemp2(apellido,fono)
values("ramirez",23255667);
select * from cejemp2;