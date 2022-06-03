create database if not exists quiz;

use quiz;

drop table if exists preguntas_primerEscalon;
create table preguntas_primerEscalon (
id int(2) not null auto_increment,
nombre varchar(100) not null,
respuesta varchar (100) not null,
primary key(id)
);

drop table if exists respuestas_primerEscalon;
create table respuestas_primerEscalon (
pregunta varchar(100) not null,
respuesta varchar(100) not null
);

drop table if exists preguntas_segundoEscalon;
create table preguntas_segundoEscalon (
id int(2) not null auto_increment,
nombre varchar(100) not null,
respuesta varchar (100) not null,
primary key(id)
);

drop table if exists respuestas_segundoEscalon;
create table respuestas_segundoEscalon (
pregunta varchar(100) not null,
respuesta varchar(100) not null
);

drop table if exists preguntas_tercerEscalon;
create table preguntas_tercerEscalon (
id int(2) not null auto_increment,
nombre varchar(100) not null,
respuesta varchar (100) not null,
primary key(id)
);

drop table if exists respuestas_tercerEscalon;
create table respuestas_tercerEscalon (
pregunta varchar(100) not null,
respuesta varchar(100) not null
);

drop table if exists preguntas_cuartoEscalon;
create table preguntas_cuartoEscalon (
id int(2) not null auto_increment,
nombre varchar(100) not null,
respuesta varchar (100) not null,
primary key(id)
);

drop table if exists respuestas_cuartoEscalon;
create table respuestas_cuartoEscalon (
pregunta varchar(100) not null,
respuesta varchar(100) not null
);

drop table if exists preguntas_quintoEscalon;
create table preguntas_quintoEscalon (
id int(2) not null auto_increment,
nombre varchar(100) not null,
respuesta varchar (100) not null,
primary key(id)
);

drop table if exists respuestas_quintoEscalon;
create table respuestas_quintoEscalon (
pregunta varchar(100) not null,
respuesta varchar(100) not null
);

insert into preguntas_primerEscalon (nombre, respuesta) 
VALUES 
('¿Cuál es la flor típica de la cultura japonesa?', 'Flor de Cerezo'), 
('Animal típico de Australia', 'Canguro'),  
('¿Cuál es el río más largo del mundo?', 'Río Nilo'),  
('¿Cuántos minutos tiene una hora?', '60'),  
('¿Cada cuántos años tenemos un año bisiesto? ', 'Cuatro años'); 

insert into respuestas_primerEscalon (pregunta,respuesta)
VALUES
('¿Cuál es la flor típica de la cultura japonesa?', 'Flor de Cerezo'), 
('¿Cuál es la flor típica de la cultura japonesa?', 'Flor de Lis'), 
('¿Cuál es la flor típica de la cultura japonesa?', 'Rosa'), 
('¿Cuál es la flor típica de la cultura japonesa?', 'Margarita'),
('Animal típico de Australia', 'Canguro'),  
('Animal típico de Australia', 'Lobo'),  
('Animal típico de Australia', 'Oso'),  
('Animal típico de Australia', 'Elefante'),
('¿Cuál es el río más largo del mundo?', 'Río Nilo'), 
('¿Cuál es el río más largo del mundo?', 'Río Amazonas'), 
('¿Cuál es el río más largo del mundo?', 'Río Misisipi'), 
('¿Cuál es el río más largo del mundo?', 'Río Danubio'),
('¿Cuántos minutos tiene una hora?', '60'),  
('¿Cuántos minutos tiene una hora?', '30'),  
('¿Cuántos minutos tiene una hora?', '120'),  
('¿Cuántos minutos tiene una hora?', '24'),    
('¿Cada cuántos años tenemos un año bisiesto? ', 'Un año'),
('¿Cada cuántos años tenemos un año bisiesto? ', 'Dos años'),
('¿Cada cuántos años tenemos un año bisiesto? ', 'Tres años'),
('¿Cada cuántos años tenemos un año bisiesto? ', 'Cuatro años');

insert into preguntas_segundoEscalon (nombre, respuesta) 
VALUES 
('¿Dónde está Transilvania?', 'Rumanía'), 
('¿Cuál es la película con más Óscars de la historia del cine?', 'Titanic'),  
('¿Cuántos años duró la Primera Guerra Mundial?', 'De 1914 a 1918'),  
('¿Qué día es la fiesta nacional de los Estados Unidos?', 'El 4 de julio'),  
('¿Cuántos años duró la Segunda Guerra Mundial?', 'De 1939 a 1945'); 

insert into respuestas_segundoEscalon (pregunta,respuesta)
VALUES
('¿Dónde está Transilvania?', 'Rumanía'), 
('¿Dónde está Transilvania?', 'Alemania'), 
('¿Dónde está Transilvania?', 'Eslovaquia'), 
('¿Dónde está Transilvania?', 'Varsovia'),
('¿Cuál es la película con más Óscars de la historia del cine?', 'Titanic'),  
('¿Cuál es la película con más Óscars de la historia del cine?', 'Lo que el viento se llevó'),  
('¿Cuál es la película con más Óscars de la historia del cine?', 'Amadeus'),  
('¿Cuál es la película con más Óscars de la historia del cine?', 'La lista de Schindler'),
('¿Cuántos años duró la Primera Guerra Mundial?', 'De 1914 a 1918'), 
('¿Cuántos años duró la Primera Guerra Mundial?', 'De 1916 a 1920'), 
('¿Cuántos años duró la Primera Guerra Mundial?', 'De 1924 a 1928'), 
('¿Cuántos años duró la Primera Guerra Mundial?', 'De 1914 a 1920'),
('¿Qué día es la fiesta nacional de los Estados Unidos?', 'El 11 de noviembre'),  
('¿Qué día es la fiesta nacional de los Estados Unidos?', 'El 4 de julio'),  
('¿Qué día es la fiesta nacional de los Estados Unidos?', 'El 19 de junio'),  
('¿Qué día es la fiesta nacional de los Estados Unidos?', 'El 25 de agosto'),    
('¿Cuántos años duró la Segunda Guerra Mundial?', 'De 1939 a 1945'),
('¿Cuántos años duró la Segunda Guerra Mundial?', 'De 1929 a 1935'),
('¿Cuántos años duró la Segunda Guerra Mundial?', 'De 1939 a 1955'),
('¿Cuántos años duró la Segunda Guerra Mundial?', 'De 1944 a 1950');

insert into preguntas_tercerEscalon (nombre, respuesta) 
VALUES 
('¿Cuál es el animal más grande de la Tierra?', 'La ballena azul'), 
('¿Cuántos huesos tiene el cuerpo humano?', '206 huesos'),  
('¿Cuántas estrellas hay en la bandera estadounidense?', '50 estrellas'),  
('¿Cuántas notas musicales existen?', '12'),  
('¿Cuál es el mineral más duro del planeta?', 'Diamante'); 

insert into respuestas_tercerEscalon (pregunta,respuesta)
VALUES
('¿Cuál es el animal más grande de la Tierra?', 'La ballena azul'), 
('¿Cuál es el animal más grande de la Tierra?', 'Cachalote'), 
('¿Cuál es el animal más grande de la Tierra?', 'Calamar gigante'), 
('¿Cuál es el animal más grande de la Tierra?', 'Ballena gris'),
('¿Cuántos huesos tiene el cuerpo humano?', '206 huesos'),  
('¿Cuántos huesos tiene el cuerpo humano?', '208 huesos'),  
('¿Cuántos huesos tiene el cuerpo humano?', '210 huesos'),  
('¿Cuántos huesos tiene el cuerpo humano?', '198 huesos'),
('¿Cuántas estrellas hay en la bandera estadounidense?', '50 estrellas'), 
('¿Cuántas estrellas hay en la bandera estadounidense?', '54 estrellas'), 
('¿Cuántas estrellas hay en la bandera estadounidense?', '52 estrellas'), 
('¿Cuántas estrellas hay en la bandera estadounidense?', '48 estrellas'),
('¿Cuántas notas musicales existen?', '12'),  
('¿Cuántas notas musicales existen?', '16'),  
('¿Cuántas notas musicales existen?', '8'),  
('¿Cuántas notas musicales existen?', '14'),    
('¿Cuál es el mineral más duro del planeta?', 'Cuarzo'),
('¿Cuál es el mineral más duro del planeta?', 'Diamante'),
('¿Cuál es el mineral más duro del planeta?', 'Topacio'),
('¿Cuál es el mineral más duro del planeta?', 'Corindón');

insert into preguntas_cuartoEscalon (nombre, respuesta) 
VALUES 
('¿Quién lideró el Imperio más grande de la historia?', 'Gengis Khan'), 
('¿Cuántas casillas tiene un tablero de ajedrez?', '64'),  
('El volcán Masaya se encuentra en:', 'Nicaragua'),  
('Alejo I fue un zar de:', 'Rusia'),  
('¿Cuál es el país con más camellos salvajes?', 'Australia'); 

insert into respuestas_cuartoEscalon (pregunta,respuesta)
VALUES
('¿Quién lideró el Imperio más grande de la historia?', 'Gengis Khan'), 
('¿Quién lideró el Imperio más grande de la historia?', 'Alejandro Magno'), 
('¿Quién lideró el Imperio más grande de la historia?', 'Ragnar Lothbrok'), 
('¿Quién lideró el Imperio más grande de la historia?', 'Julio César'),
('¿Cuántas casillas tiene un tablero de ajedrez?', '64'),  
('¿Cuántas casillas tiene un tablero de ajedrez?', '32'),  
('¿Cuántas casillas tiene un tablero de ajedrez?', '40'),  
('¿Cuántas casillas tiene un tablero de ajedrez?', '56'),
('El volcán Masaya se encuentra en:', 'Nicaragua'), 
('El volcán Masaya se encuentra en:', 'Panamá'), 
('El volcán Masaya se encuentra en:', 'Honduras'), 
('El volcán Masaya se encuentra en:', 'El Salvador'),
('Alejo I fue un zar de:', 'Rusia'),  
('Alejo I fue un zar de:', 'Persia'),  
('Alejo I fue un zar de:', 'Polonia'),  
('Alejo I fue un zar de:', 'Ucrania'),    
('¿Cuál es el país con más camellos salvajes?', 'Egipto'),
('¿Cuál es el país con más camellos salvajes?', 'Libia'),
('¿Cuál es el país con más camellos salvajes?', 'Arabia Saudí'),
('¿Cuál es el país con más camellos salvajes?', 'Australia');

insert into preguntas_quintoEscalon (nombre, respuesta) 
VALUES 
('Isla más grande del Mar Mediterráneo', 'Sicilia'), 
('¿Cuántos años duró el reinado de Sobhuza II de Suazilandia?', '82 años'),  
('Astrónomo que se mató de hambre tras quedarse ciego', 'Erastóstenes'),  
('¿Qué comen los animales xilófagos?', 'Madera'),  
('¿Cuándo fue publicado el libro de Ana Frank? ', '1947'); 

insert into respuestas_quintoEscalon (pregunta,respuesta)
VALUES
('Isla más grande del Mar Mediterráneo', 'Sicilia'), 
('Isla más grande del Mar Mediterráneo', 'Mallorca'), 
('Isla más grande del Mar Mediterráneo', 'Ibiza'), 
('Isla más grande del Mar Mediterráneo', 'Santorini'),
('¿Cuántos años duró el reinado de Sobhuza II de Suazilandia?', '82 años'),  
('¿Cuántos años duró el reinado de Sobhuza II de Suazilandia?', '67 años'),  
('¿Cuántos años duró el reinado de Sobhuza II de Suazilandia?', '39 años'),  
('¿Cuántos años duró el reinado de Sobhuza II de Suazilandia?', '55 años'),
('Astrónomo que se mató de hambre tras quedarse ciego', 'Erastóstenes'), 
('Astrónomo que se mató de hambre tras quedarse ciego', 'Euclides'), 
('Astrónomo que se mató de hambre tras quedarse ciego', 'Aristóteles'), 
('Astrónomo que se mató de hambre tras quedarse ciego', 'Sófocles'),
('¿Qué comen los animales xilófagos?', 'Madera'),  
('¿Qué comen los animales xilófagos?', 'Tierra'),  
('¿Qué comen los animales xilófagos?', 'Insectos'),  
('¿Qué comen los animales xilófagos?', 'Moluscos'),    
('¿Cuándo fue publicado el libro de Ana Frank? ', '1949'),
('¿Cuándo fue publicado el libro de Ana Frank? ', '1945'),
('¿Cuándo fue publicado el libro de Ana Frank? ', '1947'),
('¿Cuándo fue publicado el libro de Ana Frank? ', '1946');