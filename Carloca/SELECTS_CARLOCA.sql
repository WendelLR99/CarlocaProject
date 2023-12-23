--Franquias CARLOCA, devolucoes e locacoes ;
SELECT id_locacao, local_locacao, local_devolucao
FROM locacoes;

--Historico de locacoes e local;
SELECT *
FROM historico_clientes_carro
WHERE id_carro = (CAR_ID);

--KM atual dos carros;
SELECT id_carro, quilometragem_recente FROM carros;

/*Histórico de km viajados por cliente*/
SELECT km_atual - km_final AS km_viajados
FROM historico
WHERE id_carro = (CAR_ID) and id_cliente = (ID_DO_CLIENTE);

-- Um cliente não pode alocar um carro se outro ja estiver alocado;
SELECT id_carro, COUNT(id_locacao) AS num_locacoes
FROM locacoes
WHERE data_da_devolucao IS NULL
GROUP BY id_carro
HAVING num_locacoes > 1;

-- Nao pode alugar mais de um carro;
SELECT id_cliente, COUNT(id_carro) AS num_carros_alugados
FROM locacoes
WHERE data_devolucao IS NULL
GROUP BY id_cliente
HAVING carros_alugados > 1;

-- Categorias diferentes para escolha;
SELECT DISTINCT categoria FROM carros;

-- Cores somente preto, prata ou branco;
SELECT modelo, cor FROM carros;

--