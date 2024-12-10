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
    (null,'Pro','2024-02-01','2025-01-31')
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
    (null,5,'2024-06-20	','Youssef Bennani','+212 6 45 67 89 01'),
    (null,3,'2024-08-12	','Rachid ESSEMLALI','+212 6 87 65 43 21')
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
    (null,'Cyberpunk 2077','Cyberpunk','CD Projekt Red',' 2020-12-10','Action RPG',1),
    (null,'Elden Ring','Standalone','FromSoftware','2022-02-25','Action-aventure',1)
);
SELECT*from jeu;

UPDATE jeu 
set anne_Sortie='2010-09-21'
where id=1;

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
    (NULL,7,3,85.21,3),
    (NULL,6,1,97.06,1),
    (NULL,5,8,23.88,13),
    (NULL,1,6,67.21,7),
    (NULL,3,2,49.09,10),
    (NULL,4,7,56.55,9),
    (NULL,2,4,12.99,18),
    (NULL,7,8,37.78,11),
    (NULL,4,1,93.55,2),
    (NULL,5,3,79.05,5)
);
SHOW TABLES