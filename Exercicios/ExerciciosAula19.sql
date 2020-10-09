

-- Selecione o nome e a renda per capita das cidades com mais de 5000 habitantes.
use estrelas;

SELECT c.nome, c.renda_per_capita
FROM cidade c
WHERE c.nro_habitantes > 5000;

-- Selecione todos os dados das cidades que foram fundadas depois de 12 março de 1432.

SELECT c.*
FROM cidade c
WHERE c.data_fundacao > '1432-03-12';

-- Selecione a cidade cujo cep é 38180000.

SELECT c.*
FROM cidade c
WHERE c.cep = '38180000';

-- Selecione o nome das cidades do estado de São Paulo.

SELECT c.nome
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.nome = 'São Paulo';

-- Selecione todos os dados das cidades que ficam no estado de São Paulo e que possuam mais
-- do que 100 mil habitantes.

SELECT c.*
FROM cidade c
WHERE c.estado = 'sp'
AND c.nro_habitantes > 100000;

-- Selecione o nome das cidades que são capitais e tem mais do que 30000 de renda per capita.

SELECT c.*
FROM cidade c
WHERE c.capital = true
AND c.renda_per_capita > 30000;

-- Selecione o nome da cidade e o nome do estado cuja sigla é sp.

SELECT c.nome
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.sigla = 'sp';

-- Selecione a região, o nome do estado, o nome da cidade e a quantidade de habitantes das
-- cidades com renda per capita maior do que 20000 e que não são capitais.

SELECT e.regiao, e.nome, c.nome, c.nro_habitantes
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND c.renda_per_capita > 20000
AND c.capital = false;

-- Selecione todos os dados das cidades que pertencem a região sudeste.

SELECT c.*
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'sudeste';

-- Selecione o nome e a quantidade de habitantes das cidades da região sudeste que não sejam
-- capitais, que não sejam do estado cuja sigla é mg e que tenham a renda per capita maior do
-- que 15000.

SELECT c.nome, c.nro_habitantes
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'sudeste'
AND c.capital = false
AND e.sigla = 'mg'
AND c.renda_per_capita > 15000;
