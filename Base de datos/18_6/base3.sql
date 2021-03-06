create database empresaf character set utf8;
use empresaf;
create table empleado(
idempleado int,
nombre varchar(15),
apellidoP varchar(15),
apellidoM varchar(15),
edad int,
departamento varchar(15),
cargo varchar(30),
sueldo double,
fechaingreso int
);
create table libro(

idlibro int,
nombreLibro varchar(30),
autor varchar(20),
editorial varchar(30),
edicion varchar(30),
añoPublicacion int,
categoria varchar(30),
ejemplares varchar (30)
);

create table Comida(
nombreC varchar(30),
precio double,
idcomida int,
tipoCarne varchar(30)
);
alter table empleado modify fechaingreso int;
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (1,"gary","pitbul","medel",34,"defensa","comandate",1000000,"1985"); 
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (5,"bravo","capitan","claudio",34,"defensa","arquero",1000000,"1983"); 
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (1,"jorge","mago","valdivia",34,"medio","dies",1000000,"1985"); 
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (3,"eduardo","turboman","vargas",34,"delantero","ataque",300000,"1987"); 
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (2,"arturo","king","vidal",34,"medio","guerrero",2000000,"1984");
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (3,"alexis","maravilla","sanchez",32,"punta","wind",2000000,"1986");
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (4,"eugenio","chueco","mea",33,"lateral","izquierdo",1000000,"1984");
insert into empleado (idempleado,nombre,apellidoP,apellidoM,edad,departamento,cargo,sueldo,fechaingreso)
values (5,"isla","mauro","isla",34,"lateral","derecho",2000000,"1984");
insert into libro (idlibro,nombreLibro,autor,editorial,edicion,añoPublicacion,categoria,ejemplares)
values (1,"odisea","homero","casita",2,"2000","comedia",10);
insert into libro (idlibro,nombreLibro,autor,editorial,edicion,añoPublicacion,categoria,ejemplares)
values (2,"harrypotter","jkrowling","ñeñe",1,"1998","fantasia",2);
insert into libro (idlibro,nombreLibro,autor,editorial,edicion,añoPublicacion,categoria,ejemplares)
values (2,"dune","frankherbert","deosx",3,"1998","fantasia",20);
insert into libro (idlibro,nombreLibro,autor,editorial,edicion,añoPublicacion,categoria,ejemplares)
values (3,"el_arte_de_la_guerra","zunshu","honk",20,"1990","belico",20);
insert into libro (idlibro,nombreLibro,autor,editorial,edicion,añoPublicacion,categoria,ejemplares)
values (6,"la granja de los animales ","george orwell","star",50,"2010","politico",20);
select nombreLibro from libro;
select nombre,apellidoP,apellidoM from empleado;
select * from empleado where departamento="lateral";
select * from empleado where departamento="punta";
select * from libro where autor="homero" and edicion=2;
select * from libro where autor="jkrowling" and edicion=1;
select * from libro where autor="zunshu" and edicion=1;
select * from libro where autor <> "homero";
select * from libro where autor <> "zunshu";
select * from empleado where fechaingreso between '1980%' AND '2021%';
select * from empleado where fechaingreso between '1985%' AND '1987%';
select * from libro where categoria between 'comedia' AND 'fantasia';
select * from libro where categoria like 'fa%';
select * from libro where categoria like 'po%';
select * from empleado where cargo like 'de%';
select * from empleado where departamento like 'me%';
select * from empleado where idempleado like '2%';
select * from libro where editorial <> 'star' AND 'honk';
select * from libro where ejemplares between '10' AND '13';
select nombre,apellidoP,apellidoM from empleado where SUELDO between '1500000' AND '2000000';
select nombre,apellidoP,apellidoM,cargo,departamento,edad from empleado where departamento <> "defensa";
select * from libro order by editorial desc;
select * from empleado order by cargo asc;
select * from libro order by ejemplares desc;
select count(nombre) from empleado;
select count(categoria) as cantidad from libro;
select count(apellidoP) from empleado where departamento like "delantero";
select count(cargo) from empleado where departamento like "medio";
select max(sueldo) from empleado;
select min(sueldo) from empleado;
select max(añoPublicacion) from libro;
select min(añoPublicacion) from libro where editorial like "honk";
select max(sueldo) from empleado where cargo like "derecho";
select sum(sueldo) from empleado;
select sum(edad) from empleado;
select sum(fechaingreso) from empleado;
select * from empleado group by cargo;
select * from empleado group by cargo;
select * from libro group by edicion;
select * from libro group by autor;
select * from empleado;
select max(sueldo) from empleado where departamento;
select * from empleado order by sueldo desc;
select * from empleado order by sueldo asc;
select count(departamento) as cantidad from empleado;
select sum(sueldo) from empleado;
select count(ejemplares) from libro group by editorial;