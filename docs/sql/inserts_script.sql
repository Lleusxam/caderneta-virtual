INSERT INTO estado (nome) VALUES ('São Paulo'), ('Minas Gerais');

INSERT INTO cidade (nome, estado_id) VALUES 
('Campinas', 1),
('Ribeirão Preto', 1),
('Uberlândia', 2);

INSERT INTO bairro (nome, cidade_id) VALUES 
('Centro', 1),
('Barão Geraldo', 1),
('Santa Cruz', 2),
('Tibery', 3);

INSERT INTO endereco (numero, complemento, rua, bairro_id) VALUES
('123', 'Ap 101', 'Rua das Flores', 1),
('456', '', 'Av. Brasil', 2),
('789', 'Casa 2', 'Rua A', 3),
('100', '', 'Rua B', 4);

INSERT INTO tipo_de_usuario (tipo) VALUES ('administrador'), ('cliente');

INSERT INTO usuario (tipo_id, nome, email, telefone, endereco_id, senha) VALUES
(1, 'Ana Admin', 'ana@admin.com', '11999999999', 1, 'senhaadmin'),
(2, 'Carlos Cliente', 'carlos@email.com', '11988887777', 2, 'senhasecreta'),
(2, 'Beatriz Silva', 'bia@email.com', '11977776666', 3, '123456'),
(2, 'Daniel Souza', 'daniel@email.com', '11966665555', 4, 'abc123');

INSERT INTO categoria (nome) VALUES ('Garrafas'), ('Vasilhas'), ('Potes térmicos');

INSERT INTO cor (nome) VALUES ('Azul'), ('Rosa'), ('Verde'), ('Transparente');

INSERT INTO unidade_de_medida (nome) VALUES ('ml'), ('litros');

INSERT INTO produto (nome, categoria_id, cor_id, unidade_de_medida_id, capacidade) VALUES
('Garrafa 500ml Azul', 1, 1, 1, 500),
('Garrafa 1L Rosa', 1, 2, 2, 1),
('Vasilha Verde 750ml', 2, 3, 1, 750),
('Pote Térmico 1L Transparente', 3, 4, 2, 1);

INSERT INTO venda (cliente_id, data_da_venda, quantidade_de_parcelas) VALUES
(2, '2024-03-01', 2),
(3, '2024-03-05', 1),
(4, '2024-03-10', 3),
(3, '2024-04-01', 1);

INSERT INTO produtos_das_vendas (venda_id, produto_id, valor) VALUES
(1, 1, 35.90),
(1, 3, 49.90),
(2, 2, 59.90),
(3, 4, 89.90),
(4, 1, 35.90),
(4, 4, 89.90);