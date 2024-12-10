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