USE appmovie;

INSERT INTO elenco VALUES (
1, 'Leonardo DiCaprio','46','Estados Unidos'
);

INSERT INTO elenco VALUES (
2, 'Tom Hanks','65','Estados Unidos'
);

UPDATE elenco SET idade = '47' WHERE codigo = 1;

SELECT * FROM elenco;

DELETE FROM elenco WHERE codigo = 2;

CREATE TABLE filme (
	codigo INT NOT NULL AUTO_INCREMENT,
	titulo VARCHAR(100) NOT NULL,
	duracao TIME NOT NULL,
	ano YEAR NOT NULL,
	capa LONGBLOB,	
	trailer LONGBLOB,
    PRIMARY KEY (codigo)
);

CREATE TABLE genero (
	codigo INT NOT NULL AUTO_INCREMENT,
	tipo VARCHAR(100) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE origem (
	codigo INT NOT NULL AUTO_INCREMENT,
	pais VARCHAR(70) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE elenco (
	codigo INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(70) NOT NULL,
    idade TINYINT(3) NOT NULL,
    pais_nascimento VARCHAR(45) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE diretor (
	codigo INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(70) NOT NULL,
	PRIMARY KEY (codigo)
);