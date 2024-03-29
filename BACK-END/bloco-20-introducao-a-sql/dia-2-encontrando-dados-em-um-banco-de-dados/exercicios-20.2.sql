-- PRATICA
    
DROP SCHEMA IF EXISTS Scientists;
CREATE SCHEMA Scientists;
USE Scientists;

CREATE TABLE Scientists (
  SSN INT,
  Name CHAR(30) NOT NULL,
  PRIMARY KEY (SSN)
);

CREATE TABLE Projects (
  Code CHAR(4),
  Name CHAR(50) NOT NULL,
  Hours INT,
  PRIMARY KEY (Code)
);

CREATE TABLE AssignedTo (
  Scientist INT NOT NULL,
  Project CHAR(4) NOT NULL,
  PRIMARY KEY (Scientist, Project),
  FOREIGN KEY (Scientist) REFERENCES Scientists (SSN),
  FOREIGN KEY (Project) REFERENCES Projects (Code)
);

INSERT INTO Scientists(SSN,Name)
  VALUES(123234877, 'Michael Rogers'),
    (152934485, 'Anand Manikutty'),
    (222364883, 'Carol Smith'),
    (326587417, 'Joe Stevens'),
    (332154719, 'Mary-Anne Foster'),
    (332569843, 'George ODonnell'),
    (546523478, 'John Doe'),
    (631231482, 'David Smith'),
    (654873219, 'Zacary Efron'),
    (745685214, 'Eric Goldsmith'),
    (845657245, 'Elizabeth Doe'),
    (845657246, 'Kumar Swamy');

 INSERT INTO Projects (Code, Name, Hours)
  VALUES ('AeH1' ,'Winds: Studying Bernoullis Principle', 156),
    ('AeH2', 'Aerodynamics and Bridge Design', 189),
    ('AeH3', 'Aerodynamics and Gas Mileage', 256),
    ('AeH4', 'Aerodynamics and Ice Hockey', 789),
    ('AeH5', 'Aerodynamics of a Football', 98),
    ('AeH6', 'Aerodynamics of Air Hockey', 89),
    ('Ast1', 'A Matter of Time', 112),
    ('Ast2', 'A Puzzling Parallax', 299),
    ('Ast3', 'Build Your Own Telescope', 6546),
    ('Bte1', 'Juicy: Extracting Apple Juice with Pectinase', 321),
    ('Bte2', 'A Magnetic Primer Designer', 9684),
    ('Bte3', 'Bacterial Transformation Efficiency', 321),
    ('Che1', 'A Silver-Cleaning Battery', 545),
    ('Che2', 'A Soluble Separation Solution', 778);

 INSERT INTO AssignedTo (Scientist, Project)
  VALUES (123234877, 'AeH1'),
    (152934485, 'AeH3'),
    (222364883, 'Ast3'),
    (326587417, 'Ast3'),
    (332154719, 'Bte1'),
    (546523478, 'Che1'),
    (631231482, 'Ast3'),
    (654873219, 'Che1'),
    (745685214, 'AeH3'),
    (845657245, 'Ast1'),
    (845657246, 'Ast2'),
    (332569843, 'AeH4'); 
    
-- 1.Escreva uma query para exibir a string "This is SQL Exercise, Practice and Solution".
	select 'This is SQL Exercise, Practice and Solution';
    
-- 2.Escreva uma query para exibir três números em três colunas.
	select '10' as 'Coluna 1', 20 as 'Coluna 2', 30 as 'Coluna 3';
    
-- 3.Escreva uma query para exibir a soma dos números 10 e 15.
	select 10 + 15 as 'Resultado';
    
-- 4.Escreva uma query para exibir o resultado de uma expressão aritmética qualquer.
	select (5 - 2) * 3;
    
-- 5.Escreva uma query para exibir todas as informações de todos os cientistas.
	select * from Scientists;
    
-- 6.Escreva uma query para exibir o nome como "Nome do Projeto" e as 
-- horas como "Tempo de Trabalho" de cada projeto. 
	select * from Projects;
    select name as 'Nome do Projeto', hours as 'Tempo de Trabalho' from Projects;
    
-- 7.Escreva uma query para exibir o nome dos cientistas em ordem alfabética.
	select name from Scientists order by name;
    
-- 8.Escreva uma query para exibir o nome dos Projetos em ordem alfabética descendente.
	select name from Projects order by name desc;
    
-- 9.Escreva uma query que exiba a string "O projeto Name precisou de Hours 
-- horas para ser concluído." para cada projeto.
	select concat('O Projeto ', name, ' precisou de ', hours, ' horas para ser concluído')
    as 'Projetos' from Projects;
    
-- 10.Escreva uma query para exibir o nome e as horas dos três projetos com a maior
--  quantidade de horas.
	select name, hours from Projects order by hours desc limit 3;

-- 11.Escreva uma query para exibir o código de todos os projetos da tabela 
-- AssignedTo sem que haja repetições.
	select * from AssignedTo;
    select distinct(project) from AssignedTo;

-- 12.Escreva uma query para exibir o nome do projeto com maior quantidade de horas.
	select name, hours from Projects order by hours desc limit 1;
    
-- 13.Escreva uma query para exibir o nome do segundo projeto com menor quantidade de horas.
	select name, hours from Projects order by hours limit 1 offset 1;
    
-- 14.Escreva uma query para exibir todas as informações dos cinco projetos 
-- com a menor quantidade de horas.
	select * from Projects order by hours limit 5;
    
-- 15.Escreva uma query que exiba a string "Existem Number cientistas na tabela 
-- Scientists.", em que Number se refira a quantidade de cientistas.
	select * from Scientists;
    select concat('Existem ', count(SSN), ' cientistas na tabela Scientists') as
    'Total de Cientistas' from Scientists;
	
-- BÔNUS

DROP SCHEMA IF EXISTS PiecesProviders;
CREATE SCHEMA PiecesProviders;
USE PiecesProviders;

CREATE TABLE Pieces (
  Code INTEGER PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

CREATE TABLE Providers (
  Code VARCHAR(40) PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

CREATE TABLE Provides (
  Piece INTEGER,
  FOREIGN KEY (Piece) REFERENCES Pieces (Code),
  Provider VARCHAR(40),
  FOREIGN KEY (Provider) REFERENCES Providers (Code),
  Price INTEGER NOT NULL,
  PRIMARY KEY (Piece , Provider)
);

INSERT INTO Providers(Code, Name)
  VALUES ('HAL', 'Clarke Enterprises'),
    ('RBT', 'Susan Calvin Corp.'),
    ('TNBC', 'Skellington Supplies');

INSERT INTO Pieces(Code, Name)
  VALUES (1, 'Sprocket'),
    (2, 'Screw'),
    (3, 'Nut'),
    (4, 'Bolt');

INSERT INTO Provides(Piece, Provider, Price)
  VALUES (1, 'HAL', 10),
    (1, 'RBT', 15),
    (2, 'HAL', 20),
    (2, 'RBT', 25),
    (2, 'TNBC', 14),
    (3, 'RBT', 50),
    (3, 'TNBC', 45),
    (4, 'HAL', 5),
    (4, 'RBT', 7);

-- 1.Escreva uma query para exibir a peça e o preço de tudo que é provido pela empresa RBT.
	select * from Provides;
    select * from Pieces;
    select * from Providers;
    
    select piece, price from Provides where Provider like 'RBT';
    
-- 2.Escreve uma query para exibir todas as informações das cinco peças com os maiores preços.
	select * from Provides order by Price desc limit 5;
    
-- 3.Escreva uma query para exibir o nome das empresas e preço das peças com os quatro 
-- maiores preços, começando a lista a partir do 3º item.
	select Provider, Price from Provides order by Price desc
    limit 4 offset 2;
    
-- 4.Escreva uma query para exibir todas as informações das peças que são providas pela 
-- empresa HAL. Ordene o resultado pelos preços das peças de forma decrescente.
	select * from Provides where Provider like 'HAL'
    order by Price desc;
    
-- 5.Escreva uma query para exibir por quantas empresas a peça 1 é provida.
	select count(Provider) from Provides where Piece = 1;
