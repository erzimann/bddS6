CREATE TABLE Disponibilite(
   Id_Disponibilite SERIAL,
   DateDebut TIMESTAMP NOT NULL,
   DateFin TIMESTAMP NOT NULL,
   Id_Materiel INTEGER NOT NULL,
   PRIMARY KEY(Id_Disponibilite),
   FOREIGN KEY(Id_Materiel) REFERENCES Materiel(Id_Materiel)
);