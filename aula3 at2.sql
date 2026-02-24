CREATE TABLE cliente(
 id int primary key,
 nome Varchar(254) not null,
 email Varchar(254) not null,
 cpf Char(14) not null,
 telefone Char(25) not null

);

-- insert
INSERT INTO cliente (id, nome, email, cpf, telefone ) VALUES
(1,  'Clark Kent',        'clark.kent@empresa.com',      '123.456.789-01', '919850418'),
(2,  'Dave Mustaine',     'dave.mustaine@empresa.com',   '234.567.890-12', '919610913'),
(3,  'Ava Max',           'ava.max@empresa.com',         '345.678.901-23', '919940216'),
(4,  'Maria Silva',       'maria.silva@empresa.com',     '456.789.012-34', '919900722'),
(5,  'João Oliveira',     'joao.oliveira@empresa.com',   '567.890.123-45', '919881105');
-- fetch 
SELECT * FROM cliente;

CREATE TABLE endereco(
 id   int PRIMARY KEY,   
 Logradouro Varchar(200) NOT NULL,
 numero Char(4) NOT NULL,
 Bairro Varchar(200) NOT NULL,
 Cidade Varchar(100) NOT NULL,
 Uf Char(2) NOT NULL,
 Cep Char(9) NOT NULL,
 client_id int,
 FOREIGN KEY (client_id) REFERENCES cliente (id)
);

INSERT INTO endereco ( id, client_id, logradouro, numero, Bairro, Cidade, Uf, Cep) VALUES
(1, 1,  'Av. Oceânica',          '1500',  'Ondina',              'Salvador',        'BA', '40140-130'),
(2, 2, 'Rua das Hortências',    '45',     'Stella Maris',        'Salvador',        'BA', '41770-000'),
(3, 3, 'Alameda das Espatódeas','890',    'Itaigara',            'Salvador',        'BA', '41810-570'),
(4, 4, 'Rua do Tesouro',        '320',    'Rio Vermelho',        'Salvador',        'BA', '41940-060'),
(5, 5, 'Av. Tancredo Neves',    '4500',   'Caminho das Árvores', 'Salvador',        'BA', '41819-900');

SELECT * FROM endereco ;
