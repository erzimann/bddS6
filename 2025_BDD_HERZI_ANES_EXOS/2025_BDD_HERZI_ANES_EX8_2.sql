-- exo 8_2 et 8_3
ALTER TABLE reservation
ADD COLUMN Id_Disponibilite INTEGER,
ADD CONSTRAINT fk_disponibilite
    FOREIGN KEY (Id_Disponibilite) REFERENCES Disponibilite(Id_Disponibilite)