/*==================================
			Carga de datos 
Realizado en Microsoft SQL Server
====================================*/

/* Datos de la tabla verticales */

INSERT INTO Verticales
(id_vertical, vertical, prima_promedio, margen_bruto, ingreso_neto_poliza)
VALUES
(1, 'Auto', 7617.00, 0.1200, 914.00),
(2, 'Salud', 22948.00, 0.1800, 4131.00),
(3, 'Moto', 12326.00, 0.1500, 1849.00),
(4, 'Celular', 3858.00, 0.2500, 965.00),
(5, 'Mascota', 2595.00, 0.2800, 727.00),
(6, 'Ciclista', 2028.00, 0.2500, 507.00),
(7, 'Asistencias', 629.00, 0.3500, 220.00);

/* Datos de la tabla Canales */

INSERT INTO Canales
(id_canal,canal,costo_variable_poliza,costos_fijos_mensuales,capacidad_polizas_mensuales,notas)
VALUES
(1, 'Digital', 120.00, 200000.00, NULL, 'Escala sin límite de capacidad operativa en este caso'),
(2, 'Call Center', 550.00, 650000.00, 450, 'Capacidad con plantilla actual');

/* Datos de la tabla Fuentes */
INSERT INTO Fuentes
(id_fuente,fuente,leads,cpl,leads_validos_porcentaje,leads_validos,ventas_digital,ventas_cc)
VALUES
(1, 'F1 Redes', 20000, 15.00, 55.00, 11000, 190, 26),
(2, 'F2 Afiliados', 1200, 120.00, 95.00, 1140, 105, 270),
(3, 'F3 Referidos', 800, 10.00, 90.00, 720, 70, 84),
(4, 'F4 Fuentes de Pago', 3000, 35.00, 80.00, 2400, 235, 20);

/* Datos de la tabla de ventas por canal*/
INSERT INTO Ventas_Canal
(id_canal,id_vertical,cantidad)
VALUES
(1, 1, 15),
(1, 2, 25),
(1, 3, 6),
(1, 4, 140),
(1, 5, 199),
(1, 6, 160),
(1, 7, 55),
(2, 1, 125),
(2, 2, 155),
(2, 3, 54),
(2, 4, 20),
(2, 5, 21),
(2, 6, 20),
(2, 7, 5);
