
CREATE TABLE cliente (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf CHAR(20) NOT NULL,
  email VARCHAR(100)NOT NULL,
  telefone VARCHAR(15)NOT NULL
);


INSERT INTO cliente (id, nome, email, cpf, telefone) VALUES
(1,  'Clark Kent',        'clark.kent@empresa.com',      '123.456.789-01', '919850418'),
(2,  'Dave Mustaine',     'dave.mustaine@empresa.com',   '234.567.890-12', '919610913'),
(3,  'Ava Max',           'ava.max@empresa.com',         '345.678.901-23', '919940216'),
(4,  'Maria Silva',       'maria.silva@empresa.com',     '456.789.012-34', '919900722');
 SELECT * FROM cliente;


CREATE TABLE  endereco (
   id int PRIMARY KEY,
   logradouro VARCHAR(200)NOT NULL,
   numero CHAR(4)NOT NULL,
   bairro VARCHAR(200)NOT NULL,
   cidade VARCHAR(200)NOT NULL,
   uf VARCHAR(2)NOT NULL,
   cep CHAR(9)NOT NULL,
   client_id int,
   FOREIGN KEY (client_id) REFERENCES cliente(id)
);

INSERT INTO endereco (id, client_id, logradouro, numero, Bairro, cidade, uf, cep) VALUES
(1, 1,  'Av. Oceânica',          '1500',  'Ondina',              'Salvador',        'BA', '40140-130'),
(2, 2, 'Rua das Hortências',    '45',     'Stella Maris',        'Salvador',        'BA', '41770-000'),
(3, 3, 'Alameda das Espatódeas','890',    'Itaigara',            'Salvador',        'BA', '41810-570'),
(4, 4, 'Rua do Tesouro',        '320',    'Rio Vermelho',        'Salvador',        'BA', '41940-060');

SELECT * FROM endereco;


CREATE TABLE carro (
   id int PRIMARY KEY,
   Carro_id int,
   placa CHAR(12)NOT NULL,
   marca VARCHAR(15)NOT NULL,
   modelo VARCHAR(20)NOT NULL,
   ano int NOT NULL,
   cor CHAR(10)NOT NULL,
   clienti_id int,
   FOREIGN KEY (clienti_id) REFERENCES cliente (id)
);
INSERT INTO carro (id, clienti_id, Carro_id, placa, marca, modelo, ano, cor) VALUES
(1,1,1, 'ABC1D23', 'Toyota', 'Corolla Altis Hybrid', '2010', 'preto'),
(2,2,2, 'XYZ9K45', 'BMW', 'X3 M40i', '2015', 'branco'),
(3,3,3, 'DEF4G67', 'Ford', 'Mustang GT', '2024', 'roxo'),
(4,4,4, 'GHI7J93', 'Porsche', '911 Carrera 4S', '2016', 'vermelho');
   

SELECT * FROM carro;

CREATE TABLE venda (
  id int PRIMARY KEY,
  venda_id int,
  client_id int,
  Carro_id int,
  data_compra date NOT NULL,
  preco_venda decimal(12.2) NOT NULL,
  clien_id int,
  FOREIGN KEY (clien_id) REFERENCES cliente (id)
);


INSERT INTO venda (id, venda_id, client_id, Carro_id, clien_id, data_compra, preco_venda) VALUES
(1,1,1,1,1,  '2025-03-15', '189900.00'),
(2,2,2,2,2,  '2025-06-10', '465000.00'),
(3,3,3,3,3, '2025-01-20', '385000.00'),
(4,4,4,4,4,  '2025-11-05', '980000.00');


SELECT * FROM venda;
