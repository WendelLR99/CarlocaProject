INSERT INTO locacoes (id_carro, id_cliente, data_locacao, data_devolucao, km_atual, km_final, local_da_locacao, local_de_devolucao)
VALUES
    (1, 2, '2023-05-01 08:30:00', '2023-05-01 12:30:00', 3000, 4800, 'Aeroporto', 'Centro'),
    (3, 3, '2023-05-05 11:00:00', NULL, 6000, NULL, 'Centro', NULL),
    (5, 4, '2023-05-08 10:00:00', '2023-05-08 14:00:00', 5500, 5800, 'Shopping', 'Aeroporto'),
    (2, 5, '2023-05-12 13:00:00', NULL, 7000, NULL, 'Centro', NULL),
    (4, 1, '2023-05-15 09:00:00', '2023-05-15 13:00:00', 8000, 8300, 'Aeroporto', 'Shopping'),
    (6, 2, '2023-05-18 14:00:00', NULL, 9000, NULL, 'Centro', NULL),
    (7, 3, '2023-05-20 12:30:00', '2023-05-20 16:30:00', 10000, 10300, 'Shopping', 'Aeroporto');

INSERT INTO historico (id_carro, id_cliente, data_locacao, data_devolucao, km_atual, km_final, local_da_locacao, local_de_devolucao)
VALUES
    (1, 2, '2023-05-01 08:30:00', '2023-05-01 12:30:00', 3000, 4800, 'Aeroporto', 'Centro'),
    (3, 3, '2023-05-05 11:00:00', NULL, 6000, NULL, 'Centro', NULL),
    (5, 4, '2023-05-08 10:00:00', '2023-05-08 14:00:00', 5000, 6800, 'Shopping', 'Aeroporto'),
    (2, 5, '2023-05-12 13:00:00', NULL, 7000, NULL, 'Centro', NULL),
    (4, 1, '2023-05-15 09:00:00', '2023-05-15 13:00:00', 2000, 9000, 'Aeroporto', 'Shopping'),
    (6, 2, '2023-05-18 14:00:00', NULL, 9000, NULL, 'Centro', NULL),
    (7, 3, '2023-05-20 12:30:00', '2023-05-20 16:30:00', 10000, 10800, 'Shopping', 'Aeroporto');