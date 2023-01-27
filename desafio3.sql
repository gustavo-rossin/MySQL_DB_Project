SELECT
u.nome_usuario AS 'usuario',
COUNT(hr.musica_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM((m.duracao_segundos/60)), 2) AS 'total_minutos' 

FROM SpotifyClone.usuarios u

INNER JOIN SpotifyClone.historico_reproducao hr
ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.musicas m
ON hr.musica_id = m.musica_id

GROUP BY u.usuario_id
ORDER BY usuario ASC;