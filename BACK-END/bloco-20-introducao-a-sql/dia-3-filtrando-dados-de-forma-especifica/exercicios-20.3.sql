-- Prática
DROP SCHEMA IF EXISTS PecasFornecedores;
CREATE SCHEMA PecasFornecedores;
USE PecasFornecedores;

CREATE TABLE Pecas (
  code INTEGER PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

CREATE TABLE Fornecedores (
  code VARCHAR(40) PRIMARY KEY NOT NULL,
  name TEXT NOT NULL
);

CREATE TABLE Fornecimentos (
  code INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  peca INTEGER,
  FOREIGN KEY (peca) REFERENCES Pecas (code),
  Fornecedor VARCHAR(40),
  FOREIGN KEY (fornecedor) REFERENCES Fornecedores (code),
  Preco INTEGER NOT NULL
);

CREATE TABLE Vendas (
  code INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fornecimento INTEGER,
  quantity INTEGER,
  order_date DATETIME,
  FOREIGN KEY (fornecimento) REFERENCES Fornecimentos (code)
);

INSERT INTO Fornecedores(code, name)
  VALUES ('ROB', 'Robauto SA'),
    ('CNF', 'Confiauto LTDA'),
    ('MAP', 'Malok Auto Peças'),
    ('INF', 'Infinity Peças LTDA');

INSERT INTO Pecas(code, name)
  VALUES (1, 'Rebimboca'),
    (2, 'Parafuseta'),
    (3, 'Grampola'),
    (4, 'Grapeta');

INSERT INTO Fornecimentos(peca, fornecedor, preco)
  VALUES (1, 'CNF', 10),
    (1, 'ROB', 15),
    (2, 'CNF', 20),
    (2, 'ROB', 25),
    (2, 'MAP', 14),
    (3, 'INF', 50),
    (3, 'MAP', 45),
    (4, 'CNF', 5),
    (4, 'ROB', 7);

INSERT INTO Vendas(fornecimento, quantity, order_date)
  VALUES (1, 3, '2017-05-22 11:28:36'),
    (2, 2, '2018-03-22 11:35:24'),
    (3, 8, '2018-11-16 15:51:36'),
    (3, 10, '2019-02-13 13:23:22'),
    (8, 5, '2019-06-11 12:22:48'),
    (6, 1, '2019-09-07 09:53:58'),
    (7, 3, '2020-01-05 08:39:33'),
    (9, 5, '2020-05-13 14:05:19');

-- 1.Escreva uma query para exibir todas as peças que começam com GR.
	select * from Pecas;
    select * from Pecas where name like 'GR%';
    
-- 2.Escreva uma query para exibir todos os fornecimentos que contenham a peça com code 2. 
-- Organize o resultado por ordem alfabética de fornecedor.
	select * from Fornecimentos;
    select * from Fornecimentos where peca = 2
    order by Fornecedor;

-- 3.Escreva uma query para exibir as peças, preço e fornecedor de todos os fornecimentos em que
-- o código do fornecedor tenha a letra N.
	select * from Fornecimentos;
    select peca, preco, Fornecedor from Fornecimentos
    where Fornecedor like '%n%';

-- 4.Escreva uma query para exibir todas as informações dos fornecedores que são empresas 
-- limitadas (LTDA). Ordene os resultados em ordem alfabética decrescente.
	select * from Fornecedores;
    select * from Fornecedores where name like '%LTDA%'
    order by name desc;

-- 5.Escreva uma query para exibir o número de empresas (fornecedores) que contém a letra F no código.
	select count(*) from Fornecedores where code like '%f%';

-- 6.Escreva uma query para exibir os fornecimentos onde as peças custam 
-- mais de R$15,00 e menos de $40,00. Ordene os resultados por ordem crescente.
	select * from Fornecimentos where preco between 15 and 40
    order by Preco;

-- 7.Escreva uma query para exibir o número de vendas feitas entre o dia 15/04/2018 e o dia 30/07/2019.
	select * from Vendas;
    select count(*) from Vendas where date(order_date) between '2018-05-15' and '2019-07-30';
    
-- Bônus
    
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

INSERT INTO Scientists(SSN, Name)
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
    
    -- 1.Escreva uma query para exibir todas as informações de todos os cientistas que possuam a letra "e" em seu nome.
	select * from Scientists;
    select * from Scientists where Name like '%e%';
    
-- 2.Escreva uma query para exibir o nome de todos os projetos cujo o código inicie com a letra A. Ordene o resultado em ordem alfabética.
	select * from Projects;
    select Name from Projects where Code like 'A%' order by Name;

-- 3.Escreva uma query para exibir o código e nome de todos os projetos que possuam em seu código o número 3. Ordene o resultado em ordem alfabética.
	select Code, Name from Projects where Code like '%3%';
    
-- 4.Escreva uma query para exibir todos os cientistas (valores numéricos) cujos projetos sejam AeH3 , Ast3 ou Che1.
	select * from AssignedTo;
    select count(Scientist) from AssignedTo 
    where Project in('AeH3', 'Ast3', 'Che1');

-- 5.Escreva uma query para exibir todas as informações de todos os projetos com mais de 500 horas.
	select * from Projects
    where Hours > 500;
    
-- 6.Escreva uma query para exibir todas as informações de todos os projetos cujas horas sejam maiores que 250 e menores 800.
	select * from Projects
    where Hours > 250 and Hours < 800;
    
-- 7.Escreva uma query para exibir o nome e o código de todos os projetos cujo nome NÃO inicie com a letra A.
	select Name, Code from Projects
    where Name not like 'A%';
    
-- 8.Escreva uma query para exibir o nome de todos os projetos cujo código contenha a letra H.
	select Name from Projects 
    where Code like '%h%';
