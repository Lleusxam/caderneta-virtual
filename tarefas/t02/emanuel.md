## Função: valor_total_devido_por_cliente(cliente_id INT)

Retorna o valor total das compras parceladas ainda em aberto de um determinado cliente.
- Parâmetros: cliente_id (ID do cliente a ser consultado)
- Retorno: valor total das dívidas em aberto do cliente
- Utilização: usada para consulta individual do valor total que um cliente está devendo

```sql
CREATE OR REPLACE FUNCTION valor_total_devido_por_cliente(cliente_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC;
BEGIN
    SELECT SUM(v.valor_total)
    INTO total
    FROM venda v
    WHERE v.cliente_id = cliente_id AND v.quantidade_de_parcelas > 1;
    
    RETURN COALESCE(total, 0);
END;
$$ LANGUAGE plpgsql;
```

- Função: quantidade_clientes_inadimplentes()

Retorna a quantidade de clientes com pelo menos uma compra parcelada (inadimplentes).
- Parâmetros: nenhum
- Retorno: número de clientes inadimplentes
- Utilização: usada para gerar relatórios de inadimplência e calcular a taxa de fiado.

```sql
CREATE OR REPLACE PROCEDURE enviar_lembretes_inadimplentes()
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO notificacoes(cliente_id, mensagem, data_envio)
    SELECT DISTINCT v.cliente_id,
           'Você possui pagamentos pendentes em sua caderneta.',
           NOW()
    FROM venda v
    WHERE v.quantidade_de_parcelas > 1;
END;
$$;
```

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
