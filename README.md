# CarlocaProject

## REGRAS
- Um carro possui modelo, montadora, cor e versão.
- As cores de carro disponíveis são apenas branco, preto e prata.
- Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...)
- Um cliente pode alugar um carro somente na modalidade "diária".
- Um cliente não pode alugar mais de um carro.
- Enquanto um carro estiver locado por um cliente não pode ser ofertado para outro.
- O sistema deve manter o histórico dos clientes que locaram determinado carro.
- O sistema deve manter o histórico de quantos quilômetros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
- Existem várias unidades da franquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.

## DATABASE
A criação da DATABASE está no script ``DATABASE_CARLOCA`` , permitindo criar as entidades necessárias para a criação de seus atributos.

## ATRIBUTOS
Registros feitos dentro dos scripts ``INSERT_LOCACOES`` e ``INSERTS_CLIENTES_CARROS``, registrando os carros e os clientes na database, bem como as franquias.

##  SELECTS
Mostra os registros de acordo com as regras do projeto.
