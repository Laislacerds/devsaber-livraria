-- Tabela de Clientes
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);

-- Tabela de Produtos
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Produtos` (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);

-- Tabela de Vendas
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);