-- Utilise un LEFT JOIN pour inclure tous les matériels, même ceux sans emprunt
-- Puis filtre ceux pour lesquels aucun emprunt n’existe (NULL)
SELECT m.*
FROM Materiel m
LEFT JOIN reservation r ON m.id_materiel = r.id_materiel
WHERE r.id_reservation IS NULL;
