-- Requête 1

SELECT *
FROM `film`
WHERE date_sortie > '1960-12-31';

SELECT titre
FROM `film`
WHERE date_sortie < '1960-01-01';

-- Requête 2

UPDATE `film`
SET `description`='Exemple de nouvelle description'
WHERE id=35;

-- Requête 3

INSERT INTO `film`(`titre`, `slug`, `image`, `prix`, `description`, `date_sortie`)
VALUES ('Docteur Strange MoM','dr-strange-mom','1779137.png','20','Voyagez dans l inconnu a\vec le Docteur St\range, qui, avec l aide d alliés mys\tiques anciens et nouveaux, traverse les dangereuses et hallucinantes réalités alternatives du Multivers pour\ affronter un nouvel adversaire mystérieux.','2022-05-04');

INSERT INTO `films_categs`(`id_film`, `id_categorie`) VALUES ('44','49');
INSERT INTO `films_categs`(`id_film`, `id_categorie`) VALUES ('44','51');
INSERT INTO `films_categs`(`id_film`, `id_categorie`) VALUES ('44','52');

-- Requête 4

SELECT *
FROM `commentaire`
INNER JOIN user
ON commentaire.id_user=user.id
INNER JOIN film
ON commentaire.id_film=film.id
WHERE film.id=43

-- Requête 5

DELETE
FROM `film`
WHERE LEFT(slug, 1) = 't'

-- Requête 6

SELECT DISTINCT user.*
FROM `commentaire`, `user`
WHERE user.id = commentaire.id_user;SELECT * FROM `user`

-- Requête 7

SELECT *
FROM `film`
INNER JOIN films_categs
ON film.id=films_categs.id_film
WHERE films_categs.id_categorie=51

-- Requête 8

SELECT AVG(note)
FROM `commentaire`;

-- Requête 9

SELECT *
FROM `film`
WHERE MONTH(date_sortie)=6

-- Requête 10

SELECT DISTINCT user.*
FROM `commentaire`, `user`
WHERE user.id = commentaire.id_user AND user.role=1;