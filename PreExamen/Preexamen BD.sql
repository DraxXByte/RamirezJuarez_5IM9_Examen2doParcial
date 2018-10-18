drop database if exists preexamen;
create database preexamen;
use preexamen;

create table Registro(
nombre varchar(45),
apellidom varchar(45),
apellidop varchar(45),
escuela varchar(59),
matfavo  varchar(20),
deportefav  varchar(22)
);
select * from Registro;

/*create table Rol(

id_Rol int,
descripcion varchar(45),
FK_Registro   int,

primary key (id_Rol),
foreign key (FK_Registro) references Registro (id_Registro)
);*/
