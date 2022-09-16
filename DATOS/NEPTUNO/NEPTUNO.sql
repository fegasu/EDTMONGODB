CREATE DATABASE NEPTUNO;
USE NETUNO
CREATE TABLE CATEGORIAS(
Idcategoria INTEGER,
Nombrecategoria VARCHAR(50),
Descripcion TEXT
);

INSERT INTO CATEGORIAS VALUES(1,'Bebidas','Gaseosas, café, té, cervezas y maltas');
INSERT INTO CATEGORIAS VALUES(2,'Condimentos','Salsas dulces y picantes, delicias, comida para untar y aderezos');
INSERT INTO CATEGORIAS VALUES(3,'Repostería','Postres, dulces y pan dulce');
INSERT INTO CATEGORIAS VALUES(4,'Lácteos','Quesos');
INSERT INTO CATEGORIAS VALUES(5,'Granos/Cereales','Pan, galletas, pasta y cereales');
INSERT INTO CATEGORIAS VALUES(6,'Carnes','Carnes preparadas');
INSERT INTO CATEGORIAS VALUES(7,'Frutas/Verduras','Frutas secas y queso de soja');
INSERT INTO CATEGORIAS VALUES(8,'Pescado/Marisco','Pescados, mariscos y algas');

CREATE TABLE PROVEEDORES(
Idproveedor INTEGER,
Nombrecompania VARCHAR(50),
Nombrecontacto VARCHAR(30),
Cargocontacto VARCHAR(30),
Direccion VARCHAR(30),
Ciudad VARCHAR(30),
Region VARCHAR(30),
Codigo_postal VARCHAR(30),
Pais VARCHAR(30),
Telefono VARCHAR(30),
Fax VARCHAR(30)
);

LOAD DATA LOCAL INFILE 'C:/Users/JOSE F GALINDO/Downloads/PROVEEDORES.CSV'
INTO TABLE PROVEEDORES
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
;


CREATE TABLE CLIENTES(
Idcliente VARCHAR(15),
Nombrecompania VARCHAR(30),
Nombrecontacto VARCHAR(30),
Cargocontacto VARCHAR(30),
Direccion VARCHAR(30),
Ciudad VARCHAR(30),
Region VARCHAR(30),
Codigopostal VARCHAR(10),
Pais VARCHAR(30),
Telefono VARCHAR(30),
Fax VARCHAR(30)
);

LOAD DATA LOCAL INFILE 'C:/Users/JOSE F GALINDO/Downloads/CLIENTES.csv'
INTO TABLE CLIENTES
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
;
