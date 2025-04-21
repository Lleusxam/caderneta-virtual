INSERT INTO categoria (nome) VALUES
('Bebidas'), ('Alimentos'), ('Limpeza'), ('Higiene'),
('Eletrônicos'), ('Papelaria'), ('Petshop'), ('Automotivo'),
('Móveis'), ('Roupas');

INSERT INTO cor (nome) VALUES
('Vermelho'), ('Azul'), ('Verde'), ('Amarelo'),
('Preto'), ('Branco'), ('Rosa'), ('Laranja'),
('Cinza'), ('Marrom');

INSERT INTO unidade_de_medida (nome) VALUES
('Litro'), ('Mililitro'), ('Quilograma'), ('Grama'),
('Unidade'), ('Pacote'), ('Caixa'), ('Metro'),
('Centímetro'), ('Dúzia');

INSERT INTO tipo_de_usuario (tipo) VALUES
('Administrador'), ('Cliente'), ('Funcionário'), ('Gerente'),
('Fornecedor'), ('Suporte'), ('Entregador'), ('Financeiro'),
('Marketing'), ('Visitante');

INSERT INTO estado (nome) VALUES
('Rio Grande do Norte'), ('Paraíba'), ('Ceará'), ('Pernambuco'),
('Bahia'), ('São Paulo'), ('Minas Gerais'), ('Rio de Janeiro'),
('Paraná'), ('Santa Catarina');

INSERT INTO cidade (nome, estado_id) VALUES
('Natal', 1), ('João Pessoa', 2), ('Fortaleza', 3), ('Recife', 4),
('Salvador', 5), ('São Paulo', 6), ('Belo Horizonte', 7),
('Rio de Janeiro', 8), ('Curitiba', 9), ('Florianópolis', 10);

INSERT INTO bairro (nome) VALUES
('Centro'), ('Zona Norte'), ('Zona Sul'), ('Zona Oeste'),
('Alecrim'), ('Ponta Negra'), ('Tambaú'), ('Boa Viagem'),
('Bairro Novo'), ('Copacabana');

INSERT INTO endereco (numero, complemento, rua, bairro_id, cidade_id) VALUES
('123', 'Ap 101', 'Rua das Flores', 1, 1),
('456', 'Casa', 'Av. Central', 2, 2),
('789', 'Bloco B', 'Rua do Sol', 3, 3),
('101', 'Sala 2', 'Rua das Acácias', 4, 4),
('202', 'Ap 202', 'Av. Brasil', 5, 5),
('303', 'Casa', 'Rua Nova', 6, 6),
('404', 'Fundos', 'Rua Velha', 7, 7),
('505', '', 'Rua do Mar', 8, 8),
('606', '', 'Rua do Comércio', 9, 9),
('707', '', 'Rua das Palmeiras', 10, 10);

INSERT INTO usuario (nome, email, telefone, senha, tipo_id, endereco_id) VALUES
('Ana Silva', 'ana@email.com', '84999999999', 'senha123', 2, 1),
('Carlos Souza', 'carlos@email.com', '84988888888', 'senha123', 3, 2),
('Maria Oliveira', 'maria@email.com', '84977777777', 'senha123', 1, 3),
('João Lima', 'joao@email.com', '84966666666', 'senha123', 2, 4),
('Fernanda Rocha', 'fernanda@email.com', '84955555555', 'senha123', 4, 5),
('Lucas Almeida', 'lucas@email.com', '84944444444', 'senha123', 2, 6),
('Juliana Costa', 'juliana@email.com', '84933333333', 'senha123', 3, 7),
('Marcos Dias', 'marcos@email.com', '84922222222', 'senha123', 1, 8),
('Camila Nunes', 'camila@email.com', '84911111111', 'senha123', 5, 9),
('Rafael Barros', 'rafael@email.com', '84900000000', 'senha123', 2, 10);

INSERT INTO produto (nome, categoria_id, cor_id, unidade_de_medida_id, capacidade) VALUES
('Refrigerante 2L', 1, 5, 1, 2),
('Arroz 5kg', 2, 10, 3, 5),
('Desinfetante 1L', 3, 7, 1, 1),
('Shampoo 500ml', 4, 6, 2, 500),
('Smartphone X', 5, 4, 5, 1),
('Caneta Azul', 6, 2, 5, 1),
('Ração 10kg', 7, 3, 3, 10),
('Óleo de Motor 1L', 8, 8, 1, 1),
('Cadeira de Madeira', 9, 9, 5, 1),
('Camisa Polo', 10, 1, 5, 1);

INSERT INTO venda (cliente_id, data_da_venda, quantidade_de_parcelas) VALUES
(1, '2024-04-01', 3),
(2, '2024-04-02', 1),
(3, '2024-04-03', 2),
(4, '2024-04-04', 5),
(5, '2024-04-05', 4),
(6, '2024-04-06', 2),
(7, '2024-04-07', 3),
(8, '2024-04-08', 6),
(9, '2024-04-09', 1),
(10, '2024-04-10', 4);

INSERT INTO produtos_das_vendas (venda_id, produto_id, valor) VALUES
(1, 1, 8.99),
(2, 2, 22.50),
(3, 3, 5.75),
(4, 4, 12.90),
(5, 5, 1399.00),
(6, 6, 1.50),
(7, 7, 75.00),
(8, 8, 29.90),
(9, 9, 149.90),
(10, 10, 59.99);