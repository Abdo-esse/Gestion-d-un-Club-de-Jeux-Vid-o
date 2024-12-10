-- Active: 1733434204073@@127.0.0.1@3306
use Club_de_Jeux_Vidéo;
show tables;
select * FROM participer;



select
    MEMBRE.full_name, 
    Tournoi.nom_tournoi, 
    Participer.range_final
from 
    Participer
inner join MEMBRE on MEMBRE.id = Participer.id_Member
inner join Tournoi on Tournoi.id = Participer.id_Tournoi;