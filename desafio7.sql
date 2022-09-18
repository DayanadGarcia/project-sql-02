-- Mostrar a relacao de todos os albuns produzidos por artistas:
-- exibir nome do artista (Alias artista);
-- exibir nome do album (Alias album);
-- exibir quantidade de pessoas seguidoras do artista (Alias seguidores);
-- ordenados: decrescente - seguidores ou alfabetica - artista ou album - alfabetica
SELECT
Art.nome_artista AS artista,
Alb.nome_album AS album,
COUNT(Fol.id_user) AS seguidores
FROM 
SpotifyClone.artist AS Art
INNER JOIN
SpotifyClone.album AS Alb
ON
Art.id_artista = Alb.id_artista
INNER JOIN 
SpotifyClone.follow AS Fol
ON
Art.id_artista = Fol.id_artista
GROUP BY Art.nome_artista, Alb.nome_album
ORDER BY seguidores DESC, Art.nome_artista, Alb.nome_album;