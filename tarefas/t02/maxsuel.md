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

---

## Procedimento: registrar_produto()
Cadastra um novo produto no sistema.

- Parâmetros: Categoria, cor, unidade de medida, capacidade.
- Retorno: Nenhum
- Utilização: Registrar um produto no banco de dados
