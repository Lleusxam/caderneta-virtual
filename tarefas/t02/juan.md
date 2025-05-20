### 1. registrar_produto()

A função `registrar_produto()` é responsável por cadastrar um novo produto no sistema. Ela coleta informações essenciais como nome, descrição, categoria, preço e quantidade em estoque. Esses dados são validados e armazenados no banco de dados para que o produto possa ser posteriormente exibido na listagem da loja e esteja disponível para venda.

**Exemplo de uso:**

```python
registrar_produto(
    nome="Camisa Polo Masculina",
    descricao="Camisa polo de algodão, tamanhos do P ao GG",
    preco=59.90,
    estoque=20,
    categoria="Roupas"
)
```

---

### 2. realizar_venda()

A função `realizar_venda()` gerencia o processo de compra de um ou mais produtos por parte de um usuário. Ela verifica se há estoque suficiente, calcula o valor total da compra, atualiza a quantidade em estoque e registra a venda no histórico do cliente.

**Exemplo de uso:**

```python
realizar_venda(
    usuario_id=102,
    itens=[
        {"produto_id": 5, "quantidade": 2},
        {"produto_id": 8, "quantidade": 1}
    ]
)
```

---

## Procedimentos e Relatórios do Projeto

### 1. Procedimento de Registro de Venda

O procedimento de **registro de venda** é executado sempre que um usuário finaliza uma compra. Esse processo é responsável por validar os dados da venda, como:

- Identificação do cliente
- Itens selecionados
- Quantidade disponível em estoque
- Método de pagamento

Uma vez que todas as validações são concluídas com sucesso, a venda é registrada no banco de dados e são realizadas as seguintes ações:

- Atualização automática do estoque
- Registro no histórico de compras do cliente
- Emissão de um comprovante de venda

Esse procedimento garante que todas as transações sejam rastreáveis e que o sistema mantenha dados consistentes para relatórios e controle interno.

---

### 2. Relatório de Produtos Mais Vendidos

O relatório de **produtos mais vendidos** permite ao administrador visualizar quais itens tiveram maior saída em um determinado período (diário, semanal, mensal ou personalizado).

Esse relatório é gerado com base nas vendas registradas e inclui informações como:

- Nome do produto
- Quantidade vendida
- Receita gerada
- Categoria do produto

Esse relatório é útil para:

- Planejamento de reposição de estoque
- Estratégias de marketing e promoções
- Identificação de tendências de consumo

O sistema oferece a opção de exportar o relatório em formatos como PDF ou CSV para facilitar sua análise fora da plataforma.

---
