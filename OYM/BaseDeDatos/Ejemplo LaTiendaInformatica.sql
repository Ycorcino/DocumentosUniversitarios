 
/* Nombre: Juan Pancracio del Orbe Rodriguez Matricula: 1067714 Seccion: 0563 */

CREATE DATABASE LaTiendaInformatica
GO 
USE LaTiendaInformatica
GO
CREATE TABLE Articulos(
	Codigo int IDENTITY(1,1) NOT NULL,
	Nombre nvarchar(100) NULL,
	Precio int NULL,
	Fabricante int NULL,
 CONSTRAINT PK_Articulos PRIMARY KEY (Codigo)
) 
GO
CREATE TABLE dbo.Fabricante(
	Codigo int IDENTITY(1,1) NOT NULL,
	Nombre nvarchar(100) NULL,
 CONSTRAINT PK_Fabricante PRIMARY KEY  (Codigo)
) 
GO
SET IDENTITY_INSERT dbo.Articulos ON 

INSERT dbo.Articulos (Codigo, Nombre, Precio, Fabricante) VALUES (1, N'Laptop Pavilium', 25000, 6)
INSERT dbo.Articulos (Codigo, Nombre, Precio, Fabricante) VALUES (2, N'Iphone 6', 1500, 2)
INSERT dbo.Articulos (Codigo, Nombre, Precio, Fabricante) VALUES (3, N'Iphone 7 ', 25000, 2)

SET IDENTITY_INSERT dbo.Articulos OFF

SET IDENTITY_INSERT dbo.Fabricante ON 

INSERT dbo.Fabricante (Codigo, Nombre) VALUES (1, N'SAMSUNG')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (2, N'APPLE')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (3, N'OMEGA')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (4, N'CECOMSA')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (5, N'DELL')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (6, N'HP')
INSERT dbo.Fabricante (Codigo, Nombre) VALUES (7, N'CISCO')

SET IDENTITY_INSERT dbo.Fabricante OFF

ALTER TABLE dbo.Articulos  WITH CHECK ADD  CONSTRAINT FK_Articulos_Fabricante FOREIGN KEY(Fabricante)
REFERENCES dbo.Fabricante (Codigo)
GO
ALTER TABLE dbo.Articulos CHECK CONSTRAINT FK_Articulos_Fabricante
GO
