--- Criação o Banco
CREATE DATABASE projeto_vendas_estoque;
USE projeto_vendas_estoque;

-- Tabelas
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco_unitario DECIMAL(10,2),
    estoque_atual INT,
    estoque_minimo INT
);

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserir Produtos
INSERT INTO produtos (nome, categoria, preco_unitario, estoque_atual, estoque_minimo) VALUES
('Café Expresso', 'Bebidas', 5.50, 50, 20),
('Pão de Queijo', 'Alimentos', 4.00, 15, 30),
('Refrigerante Lata', 'Bebidas', 6.00, 100, 40),
('Chocolate Barra', 'Doces', 7.50, 8, 15),
('Sanduíche Natural', 'Alimentos', 12.00, 25, 10),
('Água Mineral', 'Bebidas', 3.00, 200, 50),
('Salgado Assado', 'Alimentos', 7.00, 10, 25),
('Energético', 'Bebidas', 10.00, 45, 15),
('Chiclete Box', 'Doces', 15.00, 5, 10),
('Biscoito Recheado', 'Doces', 4.50, 60, 20);

-- Inserir Vendas 
INSERT INTO vendas (produto_id, quantidade, data_venda) VALUES
(1, 10, '2024-03-01'), (2, 5, '2024-03-01'), (3, 20, '2024-03-02'),
(4, 12, '2024-03-03'), (5, 8, '2024-03-03'), (6, 50, '2024-03-04'), 
(7, 22, '2024-03-04'), (8, 15, '2024-03-05'), (9, 30, '2024-03-05'), 
(10, 12, '2024-03-06'), (1, 20, '2024-03-06'), (3, 40, '2024-03-07');