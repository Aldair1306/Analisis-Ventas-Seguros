/*
==============================================
Creación de tablas para el proyecto de Pólizas
Realizado en Microsoft SQL Server
==============================================
*/


/*==========Tabla de verticales===============*/

CREATE TABLE Verticales (
	id_vertical INT PRIMARY KEY,
	vertical VARCHAR(30) NOT NULL,
	prima_promedio DECIMAL (10,2) NOT NULL,
	margen_bruto DECIMAL(5,4) NOT NULL,
	ingreso_neto_poliza DECIMAL(10,2) NOT NULL
);

/*===========Tabla de Canales================*/

CREATE TABLE Canales (
	id_canal INT PRIMARY KEY,
	canal VARCHAR(20) NOT NULL,
	costo_variable_poliza DECIMAL (10,2) NOT NULL,
	costos_fijos_mensuales DECIMAL (10,2) NOT NULL,
	capacidad_polizas_mensuales INT NULL,
	notas VARCHAR(100) NULL
);

/*=============Tabla de Fuentes================*/

CREATE TABLE Fuentes (
	id_fuente INT PRIMARY KEY,
	fuente VARCHAR(30) NOT NULL,
	leads INT NOT NULL,
	cpl DECIMAL(10,2) NOT NULL,
	leads_validos_porcentaje DECIMAL(10,2) NOT NULL,
	leads_validos INT NOT NULL,
	ventas_digital INT NOT NULL,
	ventas_cc INT NOT NULL
);

/*==========Tabla de ventas por canal==========*/

CREATE TABLE Ventas_Canal(
	id_canal INT NOT NULL,
	id_vertical INT NOT NULL,
	cantidad INT NOT NULL,
	PRIMARY KEY(id_canal,id_vertical),
	FOREIGN KEY (id_canal) REFERENCES Canales(id_canal),
	FOREIGN KEY (id_vertical) REFERENCES Verticales(id_vertical)
)
