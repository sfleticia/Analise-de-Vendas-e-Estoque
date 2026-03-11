SELECT 
    p.nome AS Produto,
    p.categoria AS Categoria,
    p.estoque_atual AS Estoque_Disponivel,
    p.estoque_minimo AS Alerta_Minimo,
    SUM(v.quantidade) AS Total_Vendido,
    CASE 
        WHEN p.estoque_atual < p.estoque_minimo THEN '🚨 REPOR IMEDIATAMENTE'
        WHEN p.estoque_atual <= p.estoque_minimo * 1.2 THEN '⚠️ ATENÇÃO'
        ELSE '✅ OK'
    END AS Status_Critico
FROM produtos p
LEFT JOIN vendas v ON p.id = v.produto_id
GROUP BY p.id
ORDER BY Total_Vendido DESC;