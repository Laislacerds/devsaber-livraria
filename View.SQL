--  VIEW para relatório --
CREATE OR REPLACE VIEW `t1engenhariadados.Turma3_grupo14.v_relatorio_vendas_detalhado` AS
SELECT
V.ID_Venda,
V.Data_Venda,
C.Nome_Cliente,
C.Estado_Cliente,
P.Nome_Produto,
P.Categoria_Produto,
V.Quantidade,
P.Preco_Produto,
(V.Quantidade * P.Preco_Produto) AS Valor_Total
FROM `t1engenhariadados.Turma3_grupo14.Vendas` AS V
JOIN `t1engenhariadados.Turma3_grupo14.Clientes` AS C
ON V.ID_Cliente = C.ID_Cliente
JOIN `t1engenhariadados.Turma3_grupo14.Produtos` AS P
ON V.ID_Produto = P.ID_Produto;


--  Visualizar dados da VIEW --
SELECT * FROM `t1engenhariadados.Turma3_grupo14.v_relatorio_vendas_detalhado` ORDER BY Data_Venda;