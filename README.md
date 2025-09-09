# Projeto Livraria – Grupo 3\_14

## 📌 Descrição

Este projeto simula a criação de um **pipeline de dados** no BigQuery para uma livraria fictícia. O objetivo é estruturar os dados em tabelas organizadas (clientes, produtos e vendas) e permitir análises de negócio mais eficientes, indo além do uso de planilhas.

---

## 🗂️ Estrutura das Tabelas

### **Clientes**

Armazena informações de cada cliente.

```sql
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Clientes` (
    ID_Cliente INT64,
    Nome_Cliente STRING,
    Email_Cliente STRING,
    Estado_Cliente STRING
);
```

### **Produtos**

Armazena informações dos produtos.

```sql
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Produtos` (
    ID_Produto INT64,
    Nome_Produto STRING,
    Categoria_Produto STRING,
    Preco_Produto NUMERIC
);
```

### **Vendas**

Registra transações feitas por clientes.

```sql
CREATE OR REPLACE TABLE `t1engenhariadados.Turma3_grupo14.Vendas` (
    ID_Venda INT64,
    ID_Cliente INT64,
    ID_Produto INT64,
    Data_Venda DATE,
    Quantidade INT64
);
```

---

## 📥 Inserções de Exemplo

### **Clientes**

```sql
INSERT INTO `t1engenhariadados.Turma3_grupo14.Clientes`
(ID_Cliente, Nome_Cliente, Email_Cliente, Estado_Cliente)
VALUES
    (1, 'Ana Silva', 'ana.s@email.com', 'SP'),
    (2, 'Bruno Costa', 'b.costa@email.com', 'RJ'),
    (3, 'Carla Dias', 'carla.d@email.com', 'SP'),
    (4, 'Daniel Souza', 'daniel.s@email.com', 'MG');
```

### **Produtos**

```sql
INSERT INTO `t1engenhariadados.Turma3_grupo14.Produtos`
(ID_Produto, Nome_Produto, Categoria_Produto, Preco_Produto)
VALUES
    (104, 'O Guia do Mochileiro', 'Ficção Científica', 42),
    (102, 'Duna', 'Ficção Científica', 80.5),
    (101, 'Fundamentos de SQL', 'Dados', 60),
    (103, 'Python para Dados', 'Programação', 75);
```

### **Vendas**

```sql
INSERT INTO `t1engenhariadados.Turma3_grupo14.Vendas`
(ID_Venda, ID_Cliente, ID_Produto, Data_Venda, Quantidade)
VALUES
    (6, 2, 104, '2024-03-05', 1),
    (1, 1, 101, '2024-01-15', 1),
    (5, 4, 101, '2024-02-20', 1),
    (2, 2, 102, '2024-01-18', 1),
    (4, 1, 102, '2024-02-10', 1),
    (3, 3, 103, '2024-02-02', 2);
```

---

## ❓ Perguntas Respondidas

### 1. Por que uma planilha não é ideal para uma empresa que quer analisar suas vendas a fundo?

Porque planilhas não foram feitas para lidar com **grandes volumes de dados**. Quando a empresa cresce, elas ficam lentas, podem travar, geram várias versões diferentes e comprometem a **integridade dos dados**. Um banco como o BigQuery é escalável e mais confiável para análises.

### 2. Que tipo de perguntas o dono da livraria gostaria de responder com esses dados?

* Quais são os livros mais vendidos da semana ou do mês?
* Quais categorias/gêneros mais se destacam em vendas?
* Quem são os clientes que mais compram?
* Em quais estados ou regiões as vendas são mais fortes?

### 3. Com base nos dados brutos, quais outras duas tabelas poderíamos criar?

* **Fornecedores** → Para saber quem fornece os livros.
* **Pagamentos** → Para registrar formas de pagamento, status e valores detalhados.

### 4. Se o BigQuery não tem chaves estrangeiras, como garantimos que um ID\_Cliente na tabela de vendas realmente existe na tabela de clientes?

Isso precisa ser feito no **processo de ETL/ELT**, validando os dados antes de carregar. Além disso, podemos rodar consultas com **JOINs** para verificar se todas as vendas têm correspondência em clientes e produtos.

### 5. Por que é uma boa prática inserir os clientes e produtos em suas próprias tabelas antes de inserir os dados de vendas?

Porque evita duplicação de informações, garante a **integridade referencial**, facilita manutenção (se o nome ou preço mudar, basta atualizar em um lugar) e deixa as análises mais rápidas e organizadas.

### 6. Em um cenário com milhões de vendas por dia, o `INSERT INTO` seria a melhor abordagem?

Não. O ideal é usar **inserções em lote (bulk loads)**, **staging tables** ou **streaming de dados** (ex.: Pub/Sub) para não sobrecarregar o banco e reduzir custos.

### 7. Qual é a principal vantagem de usar uma VIEW em vez de simplesmente salvar o código em um arquivo de texto?

A **VIEW** fica salva no banco e sempre retorna dados atualizados, sem precisar reescrever a query. Já o arquivo de texto pode ficar desatualizado e exige manutenção manual.

### 8. Se o preço de um produto mudar na tabela Produtos, o Valor\_Total na VIEW será atualizado automaticamente?

Sim ✅, porque a VIEW consulta sempre os dados mais recentes das tabelas base. Se o preço ou a quantidade mudar, o cálculo será atualizado automaticamente quando a VIEW for acessada.

---

## 👥 Integrantes do Grupo

* Laís Lacerda
* Laynna Criscia

---

## 🚀 Tecnologias Utilizadas

* Google BigQuery
* SQL
* Google Cloud Platform

---

## 📊 Próximos Passos

* Criar novas tabelas relacionadas (ex.: fornecedores, pagamentos)
* Desenvolver consultas avançadas para responder perguntas de negócio
* Criar dashboards no Data Studio/Looker para visualização dos KPIs
