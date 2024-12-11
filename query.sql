-- Active: 1733434204073@@127.0.0.1@3306
use Club_de_Jeux_Vidéo;
show tables;
select * FROM participer;



-- Lister les membres ayant participé à un tournoi, avec leur pseudo, le nom du tournoi, et leur rang final.
select
    MEMBRE.full_name, 
    Tournoi.nom_tournoi, 
    Participer.range_final
from 
    Participer
inner join MEMBRE on MEMBRE.id = Participer.id_Member
inner join Tournoi on Tournoi.id = Participer.id_Tournoi;


--Trouver les membres qui ont souscrit à un abonnement annuel. 
select * from MEMBRE where id_Abonnement=1;
 --Trouver les jeux empruntés par un membre spécifique (via son pseudo).

 select
        jeu.titre,MEMBRE.full_name
 FROM
       Emprunter
 inner join MEMBRE on MEMBRE.id=Emprunter.id_Member
 inner join jeu on jeu.id=Emprunter.id_Member

-- Lister tous les emprunts, en incluant le pseudo du membre et les informations sur le jeu (titre et studio de développement).

select
        jeu.titre,MEMBRE.full_name,jeu.studio_develepement
 FROM
       Emprunter
 inner join MEMBRE on MEMBRE.id=Emprunter.id_Member
 inner join jeu on jeu.id=Emprunter.id_Member

 --Afficher la liste des membres et le type d'abonnement auquel ils sont associés.

 SELECT 
        MEMBRE.full_name,MEMBRE.date_rejoint,Abonnement. type_Abonnement
 FROM
       MEMBRE
inner join Abonnement on Abonnement.id=MEMBRE.id_Abonnement

--Calculer le nombre total de jeux disponibles par genre.
select count(genre) from jeu where  genre='Action/Aventure';

--Trouver le tournoi avec le plus grand nombre de participants.

SELECT 
    MAX(counte) AS max_counte
FROM( 
    SELECT 
        COUNT(id_Member) AS counte
    FROM 
        Participer
    GROUP BY 
        id_Tournoi
) as resulta