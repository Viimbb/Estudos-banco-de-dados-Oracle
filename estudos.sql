ESTUDOS SQL 01
--https://console.cloud.google.com/bigquery?p=basedosdados&d=br_poder360_pesquisas&t=microdados&page=table&project=microdados-377717&ws=!1m10!1m4!4m3!1sbasedosdados!2sbr_poder360_pesquisas!3smicrodados!1m4!1m3!1smicrodados-377717!2sbquxjob_54b81aaf_1865127b44b!3sUS
GOOGLE CLOUD
VIDEO DA AULA https://www.youtube.com/watch?v=DUYnl5CS0Po&t=551s


--Mostrar toda tabela de um banco de dados
SELECT * 
FROM `basedosdados.br_poder360_pesquisas.microdados` 
LIMIT 1000;


--Selecionar quais colunas para aparecer na tabela 
SELECT ano, cargo, sigla_partido
FROM `basedosdados.br_poder360_pesquisas.microdados` 
LIMIT 1000;


-- Linhas da tabela em que o nome do municipio e Campos dos Goytacazes
SELECT ano, cargo, sigla_partido
FROM `basedosdados.br_poder360_pesquisas.microdados` 
WHERE nome_municipio =  'Campos dos Goytacazes'
LIMIT 10;


--Mostra quais sao todos os institutos que tem na tabela e nao mostre o instituto de forma repetida entao e usado o DISTINCT na consulta 
SELECT DISTINCT instituto
FROM `basedosdados.br_poder360_pesquisas.microdados` 
LIMIT 1000;


-- Olhar os dados das pesquisas da coluna datafolha, Filtra os resultadados dos ultimos 10 anos (> so funciona se o campo for um numero= INTEGER)
SELECT *
FROM `basedosdados.br_poder360_pesquisas.microdados`
WHERE instituto = 'Datafolha' AND ano > 2013;


--Comparar Pesquisas de dois institutos diferentes pros mesmos anos 
SELECT *
FROM `basedosdados.br_poder360_pesquisas.microdados`
WHERE (instituto = 'Datafolha' OR instituto='Ibobe') AND ano = 2018;


-- Atualizar nome de pessoa em uma tabela do banco de dados (SET= coluna para atualizar)
UPDATE  admestagiario.desenv_tab_estagiario
SET FONEPRINC= '' , GRAUINSTR= 'Ensino Medio Completo', AREAATUACAO= ''
WHERE nome='';

