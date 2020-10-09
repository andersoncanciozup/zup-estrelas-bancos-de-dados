CREATE TABLE estrelas.cidade (
nome VARCHAR(45) NOT NULL,
cep VARCHAR(9) NOT NULL PRIMARY KEY,
numero_de_habitantes INT(10) NOT NULL,
capital BOOLEAN NOT NULL,
estado VARCHAR(2) NOT NULL,
renda_per_capta DECIMAL(10, 2) NOT NULL DEFAULT 1.439,
data_de_fundacao DATE NOT NULL);

INSERT INTO estrelas.cidade (
nome,
cep,
numero_de_habitantes,
capital,
estado,
renda_per_capta,
data_de_fundacao)
VALUES
('São Paulo', '00000-000', 13000000, 1, 'SP', 2000.00, '1822-09-07');

INSERT INTO estrelas.cidade (
nome,
cep,
numero_de_habitantes,
capital,
estado,
renda_per_capta,
data_de_fundacao)
VALUES
('Manaus', '00000-111', 1793000, 1, 'AM', 1500.00, '1669-10-24');

INSERT INTO estrelas.cidade (
nome,
cep,
numero_de_habitantes,
capital,
estado,
renda_per_capta,
data_de_fundacao)
VALUES
('Campinas', '11111-111', 203000, 0, 'SP', 2000.00, '1774-07-14');

INSERT INTO estrelas.cidade (
nome,
cep,
numero_de_habitantes,
capital,
estado,
renda_per_capta,
data_de_fundacao)
VALUES
('Uberlândia', '22222-111', 699097, 0, 'MG', 5000.00, '1822-09-07');

INSERT INTO estrelas.cidade (
nome,
cep,
numero_de_habitantes,
capital,
estado,
renda_per_capta,
data_de_fundacao)
VALUES
('Belo Horizonte', '22222-000', 2000000, 1, 'MG', 4000.00, '1897-12-12');

DELETE FROM estrelas.cidade
WHERE cep = 12345098;
-- DELETEI MANAUS;

UPDATE estrelas.cidade
SET numero_de_habitantes = 769007
WHERE cep = '22222-111';
-- NÚMEROS DE HABITANTES EM UBERLÂNDIA ALTERADO;

UPDATE estrelas.cidade
SET numero_de_habitantes = 14300000
WHERE cep = '00000-000';
-- NÚMEROS DE HABITANTES EM SÃO PAULO ALTERADO;

ALTER TABLE estrelas.cidade
ADD CONSTRAINT estado_fk
FOREIGN KEY (estado)
REFERENCES estrelas.estado (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
