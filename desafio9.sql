SELECT 

COUNT(hr.data_reproducao ) AS 'quantidade_musicas_no_historico'

FROM SpotifyClone.historico_reproducao hr

INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = hr.usuario_id
WHERE u.nome_usuario = 'Barbara Liskov';