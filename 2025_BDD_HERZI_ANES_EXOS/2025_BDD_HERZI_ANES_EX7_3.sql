-- Compte les réservations par matériel 
SELECT m.Nom, COUNT(r.Id_Reservation) AS nb_reservations
FROM Materiel m
JOIN Reservation r ON m.Id_Materiel = r.Id_Materiel
-- filtre ceux avec plus de 3 réservations
GROUP BY m.Id_Materiel, m.Nom
HAVING COUNT(r.Id_Reservation) > 3;
