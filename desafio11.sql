SELECT 
    nome_musica,
    IF(musica_id = 9,
        REPLACE(nome_musica, 'Bard', 'QA'),
        IF(musica_id = 7,
            REPLACE(nome_musica,
                'Amar',
                'Code Review'),
            IF(musica_id = 6,
                REPLACE(nome_musica,
                    'Pais',
                    'Pull Requests'),
                IF(musica_id = 3,
                    REPLACE(nome_musica,
                        'SUPERSTAR',
                        'SUPERDEV'),
                                    IF(musica_id = 1,
                    REPLACE(nome_musica,
                        'SOUL',
                        'CODE'),
                    'op'))))) AS 'novo_nome'
FROM
    SpotifyClone.musicas
WHERE
    musica_id IN (1 , 3, 6, 7, 9)
ORDER BY nome_musica DESC;