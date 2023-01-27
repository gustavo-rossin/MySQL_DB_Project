SELECT 
u.nome_usuario AS usuario,
IF(YEAR(hr.ano) < 2021, 'Usuário inativo', 'Usuário ativo') as 'status_usuario'

FROM 
(
SELECT 

usuario_id, 
MAX(data_reproducao) AS ano 

FROM SpotifyClone.historico_reproducao 
GROUP BY  usuario_id
) hr

INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = hr.usuario_id

GROUP BY usuario, ano
ORDER BY usuario ASC;