SELECT
ar.nome_artista AS 'artista',
al.nome_album AS 'album'

FROM SpotifyClone.artistas ar

INNER JOIN SpotifyClone.albuns al
ON al.artista_id = ar.artista_id

WHERE ar.artista_id = 3
;