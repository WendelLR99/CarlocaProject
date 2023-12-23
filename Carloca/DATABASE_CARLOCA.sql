CREATE DATABASE carloca;
USE carloca;

-- Criação das entidades;
CREATE TABLE clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
  	nome VARCHAR(50),
	cpf VARCHAR(11),
	PRIMARY KEY(id_cliente)
);

CREATE TABLE carros(
  id_carro INT AUTO_INCREMENT NOT NULL,
  modelo VARCHAR(100) NOT NULL,
  montadora VARCHAR(100) NOT NULL,
  ano_fabricacao VARCHAR(4) NOT NULL,
  cor ENUM('branco', 'preto', 'prata') NOT NULL,
  versao VARCHAR(255) NOT NULL,
  categoria VARCHAR(255) NOT NULL,
  quilometragem_recente INT NOT NULL,
  PRIMARY KEY(id_carro)
);

CREATE TABLE locacoes(
  id_locacao INT AUTO_INCREMENT,
  id_carro INT NOT NULL,
  id_cliente INT NOT NULL,
  data_devolucao DATETIME,
  data_locacao DATETIME NOT NULL,
  km_atual INT NOT NULL,
  km_final INT,
  local_da_locacao VARCHAR(255) NOT NULL,
  local_de_devolucao VARCHAR(255),
  CONSTRAINT fk_carro_locacao FOREIGN KEY (id_carro) REFERENCES carros(id_carro),
  CONSTRAINT fk_cliente_locacao FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  CHECK (data_devolucao IS NULL OR (data_devolucao IS NOT NULL AND id_cliente IS NULL)),
  CHECK (data_devolucao IS NULL OR (data_devolucao IS NOT NULL AND id_carro IS NULL)),
  PRIMARY KEY(id_locacao)
);
  
  CREATE TABLE historico(
    id_historico INT AUTO_INCREMENT NOT NULL,
    id_cliente INT NOT NULL,
    id_carro INT NOT NULL,
    data_locacao DATETIME NOT NULL,
    data_devolucao DATETIME,
    km_atual INT NOT NULL,
    km_final INT,
    local_da_locacao VARCHAR(255) NOT NULL,
    local_de_devolucao VARCHAR(255),
    CONSTRAINT id_historico_carro FOREIGN KEY (id_carro) REFERENCES carros(id_carro),
    CONSTRAINT id_historico_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    PRIMARY KEY(id_historico)
);
