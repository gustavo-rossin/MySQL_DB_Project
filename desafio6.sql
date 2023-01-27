SELECT
MIN(v.valor_assinatura) AS 'faturamento_minimo',
MAX(v.valor_assinatura) AS 'faturamento_maximo',
ROUND(AVG(v.valor_assinatura), 2) AS 'faturamento_medio',
SUM(v.valor_assinatura) AS 'faturamento_total'

FROM 
(
SELECT
u.usuario_id,
u.assinatura_id,
ta.valor_assinatura

FROM SpotifyClone.usuarios u

INNER JOIN SpotifyClone.tipos_assinatura ta
ON ta.assinatura_id = u.assinatura_id) v;