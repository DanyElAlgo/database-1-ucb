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
VALUES ('Juan P�rez', 2365487, 'Masculino', 999999);

INSERT INTO ESTUDIANTES (NOMBRE_COMPLETO, CARNET, GENERO, EDAD)
VALUES
('Pablo P�rez', 123456789, 'Masculino', 20),
('Mar�a L�pez', 987654321, 'Femenino', 18),
('Antonio Garc�a', 876543219, 'Masculino', 19),
('Susana Gonz�lez', 765432198, 'Femenino', 21),
('Pedro Fern�ndez', 654321987, 'Masculino', 22),
('Laura Mart�nez', 543219876, 'Femenino', 23),
('Jos� Rodr�guez', 432198765, 'Masculino', 24),
('Isabel S�nchez', 321987654, 'Femenino', 25),
('David G�mez', 219876543, 'Masculino', 26);

  SELECT *
  FROM ESTUDIANTES
  WHERE EDAD = 20