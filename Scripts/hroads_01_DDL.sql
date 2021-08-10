CREATE DATABASE SENAI_HROADS_TARDE
GO

USE SENAI_HROADS_TARDE
GO

CREATE TABLE TIPO_DE_HABILIDADE (
IdTipoHabilidade SMALLINT PRIMARY KEY IDENTITY(1,1),
NomeTipoHabilidade VARCHAR (20) NOT NULL,
);
GO

CREATE TABLE HABILIDADE (
IdHabilidade SMALLINT PRIMARY KEY IDENTITY (1,1),
IdTipoHabilidade SMALLINT FOREIGN KEY REFERENCES TIPO_DE_HABILIDADE(IdTipoHabilidade),
NomeHabilidade VARCHAR (30) NOT NULL,
);
GO

CREATE TABLE HABILIDADE2 (
IdHabilidade2 SMALLINT PRIMARY KEY IDENTITY (1,1),
IdTipoHabilidade SMALLINT FOREIGN KEY REFERENCES TIPO_DE_HABILIDADE(IdTipoHabilidade),
NomeHabilidade2 VARCHAR (30) NOT NULL,
);
GO


CREATE TABLE CLASSE (
IdClasse SMALLINT PRIMARY KEY IDENTITY (1,1),
IdHabilidade SMALLINT FOREIGN KEY REFERENCES HABILIDADE(IdHabilidade),
IdHabilidade2 SMALLINT FOREIGN KEY REFERENCES HABILIDADE2(IdHabilidade2),
NomeClasse VARCHAR (30) NOT NULL
);
GO

CREATE TABLE PERSONAGEM (
IdPersonagem SMALLINT PRIMARY KEY IDENTITY (1,1),
IdClasse SMALLINT FOREIGN KEY REFERENCES CLASSE(IdClasse),
NomePersonagem VARCHAR (30) NOT NULL,
CapMaxVida INT NOT NULL,
CapMaxMana INT NOT NULL,
DataAtt DATE,
DateCriacao DATE, 
);
GO