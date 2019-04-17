SELECT 
    idtitulo,
    movimento,

    CASE movimento
        WHEN 'R' THEN 'RECEBER TITULO'
        WHEN 'P' THEN 'PAGAR TITULO'

    END AS Movimento
FROM
    titulo;

SELECT 
    f.idfornecedor,
    f.nome,
    f.fone,
    p.idproduto,
    p.nome,
    p.estoqueatual,
    p.estoqueminimo,
    p.estoquemaximo,
    p.pontopedido,
    p.unidestoque,
    p.unidreceb,
    p.tpomediorepos,
    pf.precocompra,
    pf.confiabilidade,
    pf.desconto,
    CASE
        WHEN pf.confiabilidade = 'O' THEN 'ÓTIMO'
        WHEN pf.confiabilidade = 'B' THEN 'BOM'
        WHEN pf.confiabilidade = 'S' THEN 'SATISFATÓRIO'
        WHEN pf.confiabilidade = 'R' THEN 'RUÍM'
        WHEN pf.confiabilidade = 'P' THEN 'PÉSSIMO'
    END
FROM
    fornecedor f
        JOIN
    produto p
        JOIN
    produtoforn pf
WHERE
    f.idfornecedor = pf.idfornecedor
        AND p.idproduto = pf.idproduto ORDER BY f.idfornecedor;