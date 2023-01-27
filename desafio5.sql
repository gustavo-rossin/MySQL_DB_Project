SELECT
m.nome_musica AS 'cancao',
COUNT(hr.usuario_id) AS 'reproducoes'

FROM SpotifyClone.musicas m

INNER JOIN SpotifyClone.historico_reproducao hr
ON m.musica_id = hr.musica_id

GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;