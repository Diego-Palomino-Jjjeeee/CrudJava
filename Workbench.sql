create database bd_ventas_ds506;
use bd_ventas_ds506;

create table tb_personal (
dni char(8) not null primary key,
ap_paterno varchar(25) not null,
ap_materno varchar(25) not null,
nombre varchar(25) not null,
genero char(1) not null,
fecha_nacimiento date,
sueldo float
);

INSERT INTO tb_personal (dni, ap_paterno, ap_materno, nombre, genero, fecha_nacimiento, sueldo) 
VALUES 
('12345678', 'García', 'López', 'Juan', 'M', '1990-05-15', 2500.00),
('23456789', 'Martínez', 'Gómez', 'María', 'F', '1985-10-20', 2800.00),
('34567890', 'Rodríguez', 'Pérez', 'Alex', 'M', '1982-08-03', 3200.00),
('45678901', 'López', 'Hernández', 'Ana', 'F', '1995-12-10', 2000.00),
('56789012', 'Ramirez', 'Gaspar', 'Luis', 'M', '2005-06-09', 3500.00);

-- select *from tb_personal order by ap_paterno asc;
-- select *from tb_personal;
DELIMITER //

CREATE PROCEDURE sp_ListarPersonal()
BEGIN
    SELECT *
    FROM tb_personal
    ORDER BY ap_paterno ASC;
END//

DELIMITER ;
