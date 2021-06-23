
create database primeradb character set utf8;

use primeradb;

create table primeratabla(
 idtabla int auto_increment,
 nombre varchar(30),
 apellido varchar(30),
 fechanacimiento date,
 primary key(idtabla)
);
create table segundatabla(
idtabla2 int auto_increment,
modelo varchar(20),
marca varchar(20),
precio int,
primary key(idtabla2)
);
create table terceratabla(
idtabla3 int auto_increment,
fecha varchar(20),
codigo int,
nombrecompleto varchar(30),
rut int,
primary key (idtabla3)
);
alter table primeratabla add column campo varchar(10);
alter table  primeratabla modify campo double;

