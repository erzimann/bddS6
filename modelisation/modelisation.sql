CREATE TABLE Utilisateur (
    Id_Utilisateur SERIAL PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Email VARCHAR(50)
);

CREATE TABLE Materiel (
    Id_Materiel SERIAL PRIMARY KEY,
    Nom VARCHAR(50)
);

CREATE TABLE Reservation (
    Id_Reservation SERIAL PRIMARY KEY,
    DateDebut TIMESTAMP,
    DateFin TIMESTAMP,
    Id_Utilisateur INT NOT NULL,
    Id_Materiel INT NOT NULL,
    FOREIGN KEY (Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur),
    FOREIGN KEY (Id_Materiel) REFERENCES Materiel(Id_Materiel),
    FOREIGN KEY (Id_Disponibilite) REFERENCES Disponibilite(Id_Disponibilite)
);

CREATE TABLE Disponibilite(
   Id_Disponibilite SERIAL,
   DateDebut TIMESTAMP NOT NULL,
   DateFin TIMESTAMP NOT NULL,
   Id_Materiel INTEGER NOT NULL,
   PRIMARY KEY(Id_Disponibilite),
   FOREIGN KEY(Id_Materiel) REFERENCES Materiel(Id_Materiel)
);
// Explication des choix de modélisations

    /* base */

        /*
        On commence notre MCD en ajoutant les pilliers de notre DB de reservation soit, une entité "utilisateur" à laquelle on associe  0 ou plusieur reservation, 
        une entité "reservation" pour stocker chaque reservations à laquelle on associe 1 utilisateur et un 1 element à reserver et enfin une entité materiel qui
        symbolise l'element à reserver à laquelle on associe 0 ou plusieur reservations.
        */
    
    /* Update Exo 1 */

      /*
      Les types corrects vis à vis de postgre on été ajouté
      COUNTER n'existe pas en PostgreSQL → utilise SERIAL ou GENERATED.

      DATETIME n'est pas un type reconnu → utilise TIMESTAMP.

      VARCHAR(50) pour les dates n'est pas adapté → à remplacer par TIMESTAMP pour datefin.
      */
