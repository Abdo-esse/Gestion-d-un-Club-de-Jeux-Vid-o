-- Active: 1733434204073@@127.0.0.1@3306
create database Club_de_Jeux_Vidéo;
use Club_de_Jeux_Vidéo;

CREATE table Abonnement(
    id int not null PRIMARY key AUTO_INCREMENT,
    type_Abonnement VARCHAR(50) not null,
    data_debut  date,
    date_fin  date
);

CREATE table MEMBRE(
    id int not null PRIMARY key AUTO_INCREMENT,
    id_Abonnement int not null,
    date_rejoint date,
    full_name varchar (50),
    tele VARCHAR(15),
    Foreign Key (id_Abonnement) REFERENCES Abonnement (id)
);

CREATE table jeu(
    id int not null PRIMARY key AUTO_INCREMENT,
    titre VARCHAR(50)not null,
    colection VARCHAR(50) not null,
    studio_develepement VARCHAR(50),
    anne_Sortie date,
    genre varchar(50),
    individuell BOOLEAN
);

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