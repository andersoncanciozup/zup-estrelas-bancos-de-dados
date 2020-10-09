-- Selecione o nome, o estado e o número de habitantes das cidades que pertencem ao estado
-- de São Paulo, Minas Gerais e Goiás.
use estrelas;

SELECT c.nome, c.estado, c.nro_habitantes 
FROM cidade c
WHERE c.estado IN('sp', 'mg', 'go');

-- Selecione os dados das cidades que não ficam em São Paulo, Minas Gerais e Paraíba.

SELECT c.*
FROM cidade c
WHERE c.estado NOT IN('sp', 'mg', 'go');

-- Selecione os dados das cidades cujos nomes dos estados à que elas pertencem começam com a letra M.

SELECT c.*
FROM cidade c
WHERE c.estado LIKE('M%');

-- Conte quantas cidades ficam na região Centro-Oeste e tem mais do que 400 mil habitantes.

SELECT COUNT(*)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Centro-Oeste'
AND c.nro_habitantes > 400000;

-- Obtenha o total da população da região Sudeste.

SELECT SUM(c.nro_habitantes)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Sudeste';

-- Obtenha a renda per capita média da região Nordeste.

SELECT ROUND(AVG(c.renda_per_capita),2)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Nordeste';

-- Obtenha a maior população entre as cidades da região Centro-Oeste.

SELECT MAX(c.nro_habitantes) as 'maior população da região Centro-Oeste'
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Centro-Oeste';

-- Obtenha a média da renda per capita das capitais.

SELECT ROUND(AVG(c.renda_per_capita),2)
FROM cidade c
WHERE c.capital = true;

-- Obtenha a data de fundação da cidade mais antiga entre as cidades da região Sudeste que
-- não sejam capitais e que tenham a população maior do que 100 mil habitantes.

SELECT MIN(c.data_fundacao)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao = 'Sudeste'
AND c.capital = false
AND c.nro_habitantes > 100000;

-- Obtenha a média da renda per capita das cidades que não se encontram na região Sudeste e
-- Nordeste que tenham sido fundadas depois de 01 de Abril de 1500 e que tenham o nome
-- começado pela letra S.

SELECT ROUND(AVG(c.renda_per_capita),2)
FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND e.regiao NOT IN ('Sudeste', 'Nordeste')
AND C.data_fundacao > '1500-04-01'
AND c.nome like 'S%';

