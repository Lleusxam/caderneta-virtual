### registrar_produto()

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

### realizar_venda()

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