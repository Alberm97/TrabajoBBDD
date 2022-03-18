create database videoclub
go
use videoclub

CREATE TABLE Peliculas(
    ID int IDENTITY(1,1) primary key,
    Títulos varchar(200),
    Año_de_lanzamiento int,
    Duracion VARCHAR (10),
    Genero varchar(200),
    IMDB_puntuacion INT,
    Director varchar(30),
    Actor varchar(20),
    Actor2 varchar(20),
    Actor3 varchar(20),
    Actor4 varchar(20),
)

BULK INSERT Peliculas FROM 