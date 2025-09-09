-- Inserindo Clientes
INSERT INTO `t1engenhariadados.Turma3_grupo14.Clientes` 
    (ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (1, 'Ana Silva', 'ana.s@email.com', 'SP'),
    (3, 'Carla Dias', 'carla.d@email.com', 'SP'),
    (4, 'Daniel Souza', 'daniel.s@email.com', 'MG'),
    (2, 'Bruno Costa', 'b.costa@email.com', 'RJ');

-- Inserindo Produtos
INSERT INTO `t1engenhariadados.Turma3_grupo14.Produtos` 
    (ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
    (104, 'O Guia do Mochileiro', 'Ficção Científica', 42),
    (102, 'Duna', 'Ficção Científica', 80.5),
    (101, 'Fundamentos de SQL', 'Dados', 60),
    (103, 'Python para Dados', 'Programação', 75);

-- Inserindo Vendas
INSERT INTO `t1engenhariadados.Turma3_grupo14.Vendas` 
    (ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (6, 2, 104, DATE '2024-03-05', 1),
    (1, 1, 101, DATE '2024-01-15', 1),
    (5, 4, 101, DATE '2024-02-20', 1),
    (2, 2, 102, DATE '2024-01-18', 1),
    (4, 1, 102, DATE '2024-02-10', 1),
    (3, 3, 103, DATE '2024-02-02', 2);