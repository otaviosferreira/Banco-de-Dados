
CREATE TABLE usuario (
    empId      INTEGER PRIMARY KEY,
    nome       TEXT         NOT NULL,
    dept       TEXT         NOT NULL,
    email      VARCHAR(254) NOT NULL,
    cpf        CHAR(14)     NOT NULL,
    data_nasc  DATE         NOT NULL
);


CREATE TABLE endereco (
    endereco_id   INTEGER PRIMARY KEY,   
    empId         INTEGER      NOT NULL,
    logradouro    TEXT         NOT NULL,              
    numero        TEXT,                                 
    complemento   TEXT,
    bairro        TEXT         NOT NULL,
    cidade        TEXT         NOT NULL,
    uf            CHAR(2)      NOT NULL,               
    cep           CHAR(9)      NOT NULL,               
    FOREIGN KEY (empId) REFERENCES usuario(empId)

);


INSERT INTO usuario (empId, nome, dept, email, cpf, data_nasc) VALUES
(1,  'Clark Kent',      'Sales',       'clark.kent@empresa.com',      '123.456.789-01', '1985-04-18'),
(2,  'Dave Mustaine',   'Accounting',  'dave.mustaine@empresa.com',   '234.567.890-12', '1961-09-13'),
(3,  'Ava Max',         'Sales',       'ava.max@empresa.com',         '345.678.901-23', '1994-02-16'),
(4,  'Maria Silva',     'RH',          'maria.silva@empresa.com',     '456.789.012-34', '1990-07-22'),
(5,  'João Oliveira',   'TI',          'joao.oliveira@empresa.com',   '567.890.123-45', '1988-11-05'),
(6,  'Ana Costa',       'Marketing',   'ana.costa@empresa.com',       '678.901.234-56', '1995-03-14'),
(7,  'Pedro Santos',    'Finance',     'pedro.santos@empresa.com',    '789.012.345-67', '1982-08-30'),
(8,  'Juliana Pereira', 'Sales',       'juliana.pereira@empresa.com', '890.123.456-78', '1993-01-09'),
(9,  'Lucas Ferreira',  'TI',          'lucas.ferreira@empresa.com',  '901.234.567-89', '1996-06-17'),
(10, 'Beatriz Lima',    'RH',          'beatriz.lima@empresa.com',    '012.345.678-90', '1987-12-25'),
(11, 'Rafael Souza',    'Marketing',   'rafael.souza@empresa.com',    '123.987.654-32', '1991-04-03'),
(12, 'Camila Rocha',    'Accounting',  'camila.rocha@empresa.com',    '234.876.543-21', '1989-09-11'),
(13, 'Gabriel Mendes',  'Sales',       'gabriel.mendes@empresa.com',  '345.765.432-10', '1994-10-28'),
(14, 'Larissa Alves',   'TI',          'larissa.alves@empresa.com',   '456.654.321-09', '1997-05-19'),
(15, 'Thiago Carvalho', 'Finance',     'thiago.carvalho@empresa.com', '567.543.210-98', '1984-02-07');

SELECT * FROM usuario ;

INSERT INTO endereco (endereco_id, empId, logradouro, numero, complemento, bairro, cidade, uf, cep) VALUES
(1, 1,  'Av. Oceânica',          '1500',   'Apt 302',          'Ondina',              'Salvador',        'BA', '40140-130'),
(2, 2, 'Rua das Hortências',    '45',     'Casa 2',           'Stella Maris',        'Salvador',        'BA', '41770-000'),
(3, 3, 'Alameda das Espatódeas','890',    'Bloco B, Apt 401', 'Itaigara',            'Salvador',        'BA', '41810-570'),
(4, 4, 'Rua do Tesouro',        '320',    'Ap 101',           'Rio Vermelho',        'Salvador',        'BA', '41940-060'),
(5, 5, 'Av. Tancredo Neves',    '4500',   NULL,               'Caminho das Árvores', 'Salvador',        'BA', '41819-900'),
(6, 6, 'Rua Prof. Lemos de Carvalho', '112', 'Apt 503',       'Barra',               'Salvador',        'BA', '40140-350'),
(7, 7, 'Travessa dos Artistas', '78',     'Casa 1',           'Federação',           'Salvador',        'BA', '40230-310'),
(8, 8, 'Rua Prof. Sabino Silva','200',    'Apt 704',          'Pituba',              'Salvador',        'BA', '41810-360'),
(9, 9, 'Av. Sete de Setembro',  '3200',   'Apt 1201',         'Corredor da Vitória', 'Salvador',        'BA', '40080-000'),
(10, 10, 'Rua do Canal',          '55',     'Casa 3',           'Stella Maris',        'Lauro de Freitas','BA', '42700-000'),
(11, 11, 'Alameda Salvador',      '1050',   'Bloco C, Apt 802', 'Caminho das Árvores', 'Salvador',        'BA', '41820-770'),
(12, 12, 'Rua das Margaridas',    '180',    'Apt 201',          'Imbuí',               'Salvador',        'BA', '41720-120'),
(13, 13, 'Av. Luiz Viana Filho',  '7700',   'Condomínio Paralela', 'Cab',              'Salvador',        'BA', '41730-000'),
(14, 14, 'Rua do Horto Florestal','90',     'Casa 2',           'São Cristóvão',       'Lauro de Freitas','BA', '42700-000'),
(15, 15, 'Rua Chile',             '150',    'Apt 405',          'Comércio',            'Salvador',        'BA', '40010-060');

SELECT * FROM endereco ;

