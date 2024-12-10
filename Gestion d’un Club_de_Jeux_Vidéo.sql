-- Active: 1733434204073@@127.0.0.1@3306
create database Club_de_Jeux_Vidéo;

use Club_de_Jeux_Vidéo;


CREATE table Abonnement(
    id int not null PRIMARY key AUTO_INCREMENT,
    type_Abonnement VARCHAR(50) not null,
    data_debut  date,
    date_fin  date
);

insert into Abonnement(
    values
    (null,'Premium','2024-03-15','2025-03-14'),
    (null,'Étudiant','2024-06-01','2024-11-30'),
    (null,'Famille','2024-09-01	','2025-08-31'),                       
    (null,'Pro','2024-02-01','2025-01-31'),
    (null,'Pro','2024-09-26','2025-09-26')
);
SELECT*from abonnement;
CREATE table MEMBRE(
    id int not null PRIMARY key AUTO_INCREMENT,
    id_Abonnement int not null,
    date_rejoint date,
    full_name varchar (50),
    tele VARCHAR(15),
    Foreign Key (id_Abonnement) REFERENCES Abonnement (id)
);


insert into MEMBRE(
    values 
    (null,1,'2023-02-10	','Ahmed El Yacoubi','+212 6 12 34 56 78'),
    (null,2,'2023-05-15	','Fatima ','+212 6 98 76 54 32'),
    (null,3,'2024-01-25	','Mohamed Bensalem','+212 6 54 32 10 98'),
    (null,4,'2024-03-05	','Aicha Lamrani','+212 6 11 22 33 44'),
    (null,1,'2024-06-20	','Youssef Bennani','+212 6 45 67 89 01'),
    (null,3,'2024-06-15	','Hind El Bacha','+212 680 123 456'),
    (null,2,'2024-08-12	','Rachid ESSEMLALI','+212 6 87 65 43 21'),
    (null,4,'2024-05-28	','Samir Belhaj','+212 679 012 345'),
    (null,1,'2024-04-10	','Leila Ait Lahcen','+212 678 901 234'),
    (null,1,'2024-03-22	','Othmane El Mansouri','+212 677 890 123'),
    (null,4,'2024-01-08	','Yassine Bouziane','+212 675 678 901'),
    (null,2,'2024-12-20	','Hanan El Fadili','+212 674 567 890'),
    (null,3,'2024-12-05	','Nabil Oukacha','+212 673 456 789'),
    (null,4,'2024-11-15	','Zineb Amrani','+212 672 345 678'),
    (null,1,'2024-11-02	','Abdelkader Chaouki','+212 671 234 567'),
    (null,2,'2024-09-17	','Hicham El Idrissi','+212 669 012 345'),
    (null,3,'2024-08-12	','Khadija Othmani','+212 668 901 234'),
    (null,4,'2024-06-25	','Soukaina El Hajjami','+212 666 789 012'),
    (null,1,'2024-08-12	','Khadija Othmani	','+212 668 901 234')
    );
SELECT*from MEMBRE;

CREATE table jeu(
    id int not null PRIMARY key AUTO_INCREMENT,
    titre VARCHAR(50)not null,
    colection VARCHAR(50) not null,
    studio_develepement VARCHAR(50),
    anne_Sortie date,
    genre varchar(50),
    individuell BOOLEAN
);
insert into jeu (
    VALUES
    (null,'The Legend of Zaki','Adventure Pack','Atlas Studio',' 2022-11-10','Action/Aventure',1),
    (null,'Racing Revolution','Speed Masters','Horizon Games','2021-09-15','Course',0),
    (null,'Desert Warriors','Battle Legacy','Nomad Entertainment','2023-02-20','Combat',1),
    (null,'Mystic Quest','Fantasy Saga','DreamCraft Studios','2020-07-12','RPG',0),
    (null,'Galaxy Raiders','Space Legends','NovaWorks','2023-03-01','Science-Fiction',0),
    (null,'Urban Soccer League','Street Sports','PlayCity Studio','2022-08-10','Sport',0),
    (null,'Puzzle Paradise','Brain Teasers','Logic Arts','2020-01-25','Puzzle',1),
    (null,'Zombie Survival','Horror Pack','Scary Games','2021-10-31	','Horreur/Survie',1),
    (null,'Ninja Chronicles','Samurai Tales','Bushido Works','2019-06-15','Action-aventure',1),
    (null,'Empire Builders','Civilization Era','Strategy Forge','2023-05-05','Stratégie',0),
    (null,'Drift Kings','Speed Legends','Torque Studios','2022-09-20','Course',1),
    (null,'Alien Invaders','Space Combat','AstroTech','2021-12-01','Science-Fiction',0),
    (null,'Wild West Duel','Cowboy Legends','Frontier Studio','2022-03-15','Combat',1),
    (null,'Heros Journey','Fantasy Heroes','DragonSoft','2020-05-30','RPG',0),
    (null,'Arctic Survival','Nature Survival','Polar Games','2021-01-10','Survie',1),
    (null,'World Conqueror','Global Conflict','War Masters','2023-04-18','Stratégie',0),
    (null,'Dance Fever','Rhythm Nation','Groove Entertainment','2019-09-10','Musique/Rythme',1)
);
SELECT*from jeu;



CREATE table Emprunter(
    id int not null PRIMARY key AUTO_INCREMENT,
    id_Member int not null,
    id_jeu int not null,
    date_Emprunter DATE,
    date_retoure_prouve date,
    date_retoure_relle date,
    Foreign Key (id_Member) REFERENCES MEMBRE (id),
    Foreign Key (id_jeu) REFERENCES jeu (id)
    );

    insert into Emprunter(
        VALUES
        (null,3,8,'2024-01-05','2024-01-12','2024-01-10'),
        (null,1,3,'2024-01-08','2024-01-15','2024-01-18'),
        (null,2,5,'2024-02-01','2024-02-08','2024-02-07'),
        (null,7,1,'2024-03-10','2024-03-17	','2024-03-19'),
        (null,5,9,'2024-06-25','2024-07-02','2024-06-30'),
        (null,4,7,'2024-08-20','2024-08-27	','2024-08-29'),
        (null,6,2,'2024-10-15','2024-10-22','2024-10-22')
    );
     insert into Emprunter(
        VALUES
        (null,3,8,'2024-09-25','2025-01-12','2025-01-10'))

create table Tournoi(
    id int not null PRIMARY key AUTO_INCREMENT,
    nom_tournoi varchar(50) not null,
    date_tournoi date,
    recompense VARCHAR(50)
);
insert into Tournoi(
    values 
    (null,'Championnat FIFA 2024','2024-01-15','Trophée + 5000 MAD'),
    (null,'Tournoi de Combat Tekken','2024-01-18','Console PS5'),
    (null,'Course Mario Kart Deluxe','2024-02-05','Casque Gaming'),
    (null,'Légendes de League of Legends','2024-03-10','10 000 MAD + Certificat'),
    (null,'Super Smash Bros. Battle','2024-04-20','Manette Pro'),
    (null,'Championnat Call of Duty','2024-05-15','15 000 MAD + Médaille'),
    (null,'Tournoi Rocket League','2024-06-25','5000 MAD + Abonnement VIP'),
    (null,'Grand Prix Gran Turismo','2024-07-30','Volant et pédalier gaming')
);
SELECT*from Tournoi;

create table Participer(
    id int not null PRIMARY key AUTO_INCREMENT,
    id_Member int not null,
    id_Tournoi int not null,
    score DECIMAL(10,2),
    range_final VARCHAR(30),
    Foreign Key (id_Member) REFERENCES MEMBRE (id),
    Foreign Key (id_Tournoi) REFERENCES Tournoi (id)
);
insert into participer(
    VALUES
    (NULL,7,8,85.21,3),
    (NULL,6,1,97.06,1),
    (NULL,5,8,23.88,4),
    (NULL,1,6,67.21,7),
    (NULL,3,2,49.09,10),
    (NULL,4,7,56.55,6),
    (NULL,2,4,12.99,8),
    (NULL,18,8,37.78,9),
    (NULL,14,1,93.55,2),
    (NULL,9,3,79.05,5)
);
SHOW TABLES