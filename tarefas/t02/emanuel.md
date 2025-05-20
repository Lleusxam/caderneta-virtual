## Procedimento: editar_venda

Edita os dados de uma venda já registrada no sistema.

- Parâmetros: ID da venda, novo ID do cliente, nova data da venda, novo número de parcelas.
- Retorno: Nenhum
- Utilização: Atualizar as informações de uma venda existente no banco de dados.
```sql
CREATE OR REPLACE PROCEDURE editar_venda(
    IN p_venda_id INTEGER,
    IN p_cliente_id INTEGER,
    IN p_data DATE,
    IN p_qtd_parcelas INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM venda WHERE id = p_venda_id) THEN
        UPDATE venda
        SET cliente_id = p_cliente_id,
            data_da_venda = p_data,
            quantidade_de_parcelas = p_qtd_parcelas
        WHERE id = p_venda_id;

        RAISE NOTICE 'Venda atualizada com sucesso.';
    ELSE
        RAISE EXCEPTION 'Venda com id % não encontrada.', p_venda_id;
    END IF;
END;
$$;
```

## Procedimento: editar_produto_da_venda

Edita o valor de um produto vinculado a uma venda.

- Parâmetros: ID da venda, ID do produto, novo valor.
- Retorno: Nenhum
- Utilização: Atualizar o valor de um produto já inserido em uma venda no banco de dados.

```sql
CREATE OR REPLACE PROCEDURE editar_produto_da_venda(
    IN p_venda_id INTEGER,
    IN p_produto_id INTEGER,
    IN p_novo_valor NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM produtos_das_vendas 
        WHERE venda_id = p_venda_id AND produto_id = p_produto_id
    ) THEN
        UPDATE produtos_das_vendas
        SET valor = p_novo_valor
        WHERE venda_id = p_venda_id AND produto_id = p_produto_id;

        RAISE NOTICE 'Produto da venda atualizado com sucesso.';
    ELSE
        RAISE EXCEPTION 'Produto com id % não encontrado na venda %.', p_produto_id, p_venda_id;
    END IF;
END;
$$;
```
