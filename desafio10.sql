SELECT 

m.nome_musica AS 'nome',
COUNT(hr.musica_id) AS 'reproducoes'

FROM SpotifyClone.musicas m

INNER JOIN SpotifyClone.historico_reproducao hr
ON hr.musica_id = m.musica_id
INNER JOIN SpotifyClone.usuarios u
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.tipos_assinatura ta
ON u.assinatura_id = ta.assinatura_id

WHERE ta.tipo_assinatura IN ('gratuito', 'pessoal')

GROUP BY nome
ORDER BY nome ASC;