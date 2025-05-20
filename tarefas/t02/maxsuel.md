## Função: clientes_com_dividas()

Consulta os nomes dos clientes que possuem compras parceladas (mais de 1 parcela), o que caracteriza uma dívida em aberto.

- Parâmetros: nenhum
- Retorno: lista de nomes de clientes com dívidas
- Utilização: usada para relatórios de inadimplência ou para enviar lembretes de pagamento.
```sql
CREATE OR REPLACE FUNCTION clientes_com_dividas()
RETURNS TABLE(nome_cliente VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT u.nome
    FROM usuario u
    JOIN venda v ON u.id = v.cliente_id
    WHERE v.quantidade_de_parcelas > 1;
END;
$$ LANGUAGE plpgsql;

```

---

## Função: clientes_em_dia()

Consulta os nomes dos clientes que pagaram à vista ou em apenas uma parcela, ou seja, estão em dia com os pagamentos.

- Parâmetros: nenhum
- Retorno: lista de nomes de clientes sem dívidas
- Utilização: usada para identificar clientes confiáveis.

```sql
CREATE OR REPLACE FUNCTION clientes_em_dia()
RETURNS TABLE(nome_cliente VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT u.nome
    FROM usuario u
    JOIN venda v ON u.id = v.cliente_id
    WHERE v.quantidade_de_parcelas = 1;
END;
$$ LANGUAGE plpgsql;

```

## Procedimento: registrar_venda()
Cadastra uma nova venda para um cliente já existente.

- Parâmetros: ID do cliente, data da venda, número de parcelas.
- Retorno: Nenhum
- Utilização: Registrar uma venda no banco de dados

```sql
CREATE OR REPLACE PROCEDURE registrar_venda(
    IN p_cliente_id INTEGER,
    IN p_data DATE,
    IN p_qtd_parcelas INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO venda (cliente_id, data_da_venda, quantidade_de_parcelas)
    VALUES (p_cliente_id, p_data, p_qtd_parcelas);
    
    RAISE NOTICE 'Venda registrada com sucesso.';
END;
$$;

```

---

## Procedimento: registrar_produto()
Cadastra um novo produto no sistema.

- Parâmetros: Categoria, cor, unidade de medida, capacidade.
- Retorno: Nenhum
- Utilização: Registrar um produto no banco de dados
```sql
CREATE OR REPLACE PROCEDURE inserir_produto_na_venda(
    IN p_venda_id INTEGER,
    IN p_produto_id INTEGER,
    IN p_valor NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO produtos_das_vendas (venda_id, produto_id, valor)
    VALUES (p_venda_id, p_produto_id, p_valor);
    
    RAISE NOTICE 'Produto inserido na venda com sucesso.';
END;
$$;

```
