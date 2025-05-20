CREATE TABLE estado (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cidade (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado_id INTEGER REFERENCES estado(id)
);

CREATE TABLE bairro (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade_id INTEGER REFERENCES cidade(id)
);

CREATE TABLE endereco (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(10),
    complemento VARCHAR(100),
    rua VARCHAR(100),
    bairro_id INTEGER REFERENCES bairro(id)
);

CREATE TABLE tipo_de_usuario (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    tipo_id INTEGER REFERENCES tipo_de_usuario(id),
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(13),
    endereco_id INTEGER REFERENCES endereco(id),
    senha TEXT NOT NULL
);

CREATE TABLE categoria (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE unidade_de_medida (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE produto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria_id INTEGER REFERENCES categoria(id),
    cor_id INTEGER REFERENCES cor(id),
    unidade_de_medida_id INTEGER REFERENCES unidade_de_medida(id),
    capacidade INTEGER NOT NULL
);

CREATE TABLE venda (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES usuario(id),
    data_da_venda DATE NOT NULL,
    quantidade_de_parcelas INTEGER NOT NULL
);

CREATE TABLE produtos_das_vendas (
    id SERIAL PRIMARY KEY,
    venda_id INTEGER REFERENCES venda(id),
    produto_id INTEGER REFERENCES produto(codigo),
    valor NUMERIC(10,2) NOT NULL
);
