-- Insertion des utilisateurs
INSERT INTO Utilisateur (Nom, Prenom, Email) VALUES
('Dupont', 'Jean', 'jean.dupont@example.com'),
('Martin', 'Sophie', 'sophie.martin@example.com'),
('Durand', 'Luc', 'luc.durand@example.com'),
('Bernard', 'Claire', 'claire.bernard@example.com'),
('Petit', 'Antoine', 'antoine.petit@example.com'),
('Moreau', 'Julie', 'julie.moreau@example.com'),
('Roux', 'Paul', 'paul.roux@example.com'),
('Fournier', 'Emma', 'emma.fournier@example.com'),
('Girard', 'Louis', 'louis.girard@example.com'),
('Andre', 'Laura', 'laura.andre@example.com');


-- Insertion du matériel
INSERT INTO Materiel (Nom,nb_elem) VALUES
('Vidéo-projecteur', 20),
('Ordinateur portable', 15),
('Caméra HD', 10),
('Microphone',10),
('Tablette graphique',10),
('Scanner 3D',10),
('Imprimante couleur', 10),
('Trépied',10),
('Enregistreur audio',10),
('Drone',10);

-- Insertion des réservations
INSERT INTO Reservation (DateDebut, DateFin, Id_Utilisateur, Id_Materiel) VALUES
('2025-05-20 09:00:00', '2025-05-20 12:00:00', 1, 1),
('2025-05-21 14:00:00', '2025-05-21 18:00:00', 2, 3),
('2025-05-22 10:00:00', '2025-05-22 13:00:00', 4, 5),
('2025-05-23 08:30:00', '2025-05-23 10:30:00', 6, 2),
('2025-05-24 13:00:00', '2025-05-24 17:00:00', 9, 8);
('2025-06-20 09:00:00', '2025-06-20 12:00:00', 1, 2),