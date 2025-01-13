-- Tabla: Miguel Rivas --
DROP TABLE IF EXISTS servicio_adicional;
CREATE TABLE servicio_adicional (
    servicio_adicional_id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    tarifa DECIMAL(10, 2),
    reserva_id INT,
    PRIMARY KEY (servicio_adicional_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO servicio_adicional (nombre, descripcion, tarifa, reserva_id) VALUES
('Desayuno', 'Buffet desayuno incluido', 15.00, 1),
('Spa', NULL, 50.00, 2),
('Transporte', 'Traslado al aeropuerto', NULL, 3),
('Cena Romántica', NULL, 75.00, NULL),
('Tour Guiado', 'Excursión a sitios turísticos', 30.00, NULL);

DROP TABLE IF EXISTS reserva_servicio_adicional;
CREATE TABLE reserva_servicio_adicional (
    reserva_servicio_adicional_id INT AUTO_INCREMENT NOT NULL,
    reserva_id INT NOT NULL,
    servicio_adicional_id INT NOT NULL,
    PRIMARY KEY (reserva_servicio_adicional_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO reserva_servicio_adicional (reserva_id, servicio_adicional_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(1, 3);

--  Tabla: Alejandro Juarez --


-- Tabla: Kelvia Neves --



-- Tabla: Manuel Muñoz --


--  Tabla: Carlos Alvarado --
