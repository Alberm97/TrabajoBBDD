create database videoclub
go
use videoclub
create table empleados(
	id int primary key,
	nombre varchar(90)not null,
	apellidos varchar(100)not null,
	dni varchar(9)not null,
	email varchar(100)not null,
	ciudad varchar(100)not null,
	calle varchar(200)not null,
	puesto varchar(200)not null,
	id_sucursal int,
)

 
create table videoclub(
	id int primary key,
	ciudad varchar(50) not null,
	idGerente int not null, 
	CONSTRAINT fk_empleados_videoclub foreign key
	(idGerente) references empleados(id), 
)

 alter table empleados
 add constraint fk_id_videoclub
 foreign key (id_sucursal)
 references videoclub(id);

create table clientes(
	id int primary key,
	nombre varchar(90) not null,
	apellidos varchar(100),
	dni varchar(9) not null,
	email varchar(100) not null,
	ciudad varchar(100) not null,
	calle varchar(200) not null,
	id_sucursal int,
	CONSTRAINT fk_id_sucursal_cliente foreign key
	(id_sucursal) references videoclub(id),
)

create table peliculas(
	id int identity (1,1) primary key,
	id_sucursal int,
	Titulos varchar(200)not null,
    Anyo_lanzamiento varchar(200)not null,
    Duracion varchar(200)not null,
    Genero varchar(200)not null,
    Director varchar(30),
    Protagonista varchar(100),
	CONSTRAINT fk_id_peliculas_sucursal foreign key
	(id_sucursal) references videoclub(id),
)

create table peliculas_alquiladas(
	id_pelicula int,
	id_cliente int,
	fecha_alquiler date not null,
	fecha_final_alquiler date not null,

	CONSTRAINT fk_id_pelicula_alquilada foreign key
	(id_pelicula) references peliculas(id),
	CONSTRAINT fk_id_cliente foreign key
	(id_cliente) references clientes(id),
	primary key(id_pelicula,id_cliente),
)

create table sanciones(
	id_cliente int,
	id_pelicula int,
	id_sucursal int,
	motivo_sacion varchar(500),
	fecha_final_sancion date not null,
	CONSTRAINT fk_id_clientes_sanciones foreign key
	(id_cliente) references clientes(id),
	CONSTRAINT fk_pelicula_sanciones foreign key
	(id_pelicula) references peliculas(id),
	CONSTRAINT fk_sucursal_sanciones foreign key
	(id_sucursal) references clientes(id),
)


