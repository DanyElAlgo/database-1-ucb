-- When haces tus momos en SQL

create database DATABASE_UCB

use DATABASE_UCB

create table ESTUDIANTES (
ID				INT			IDENTITY(1,1)	NOT NULL,
NOMBRE_COMPLETO	VARCHAR(200)				NOT NULL,
CARNET			INT							NOT NULL,
GENERO			VARCHAR(200)				NOT NULL,
EDAD			INT							NOT NULL
);

--insertar datos
INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES ('Juan Pérez', 2365487, 'Masculino', 999999);

INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES
('Pablo Pérez', 123456789, 'Masculino', 20),
('María López', 987654321, 'Femenino', 18),
('Antonio García', 876543219, 'Masculino', 19),
('Susana González', 765432198, 'Femenino', 21),
('Pedro Fernández', 654321987, 'Masculino', 22),
('Laura Martínez', 543219876, 'Femenino', 23),
('José Rodríguez', 432198765, 'Masculino', 24),
('Isabel Sánchez', 321987654, 'Femenino', 25),
('David Gómez', 219876543, 'Masculino', 26);

  SELECT *
  FROM ESTUDIANTES
  WHERE EDAD = 20