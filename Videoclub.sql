create database videoclub
go
use videoclub

CREATE TABLE Peliculas(
    
    Títulos varchar(200),
    Anyo_lanzamiento varchar(200),
    Duracion varchar(200),
    Genero varchar(200),
    Director varchar(30),
    Actor1 varchar(100),
    Actor2 varchar(100),
    Actor3 varchar(100),
    Actor4 varchar(100),
)
drop table Peliculas

BULK INSERT Peliculas FROM '/VAR/OPT/MSSQL/BACKUP/Videoclub/Videoclub.csv'
WITH(
    FIELDTERMINATOR = ',' , ROWTERMINATOR = '0X0a'
)
