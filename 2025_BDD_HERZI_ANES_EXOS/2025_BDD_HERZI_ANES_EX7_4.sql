SELECT 
    u.numero_etudiant,       
    u.Nom,                   
    u.Prenom,                

    -- On compte le nombre de réservations faites par cet utilisateur (même si 0)
    COUNT(r.Id_Reservation) AS nb_reservations  
FROM 
    Utilisateur u
-- On relie la table Reservation à la table Utilisateur via un LEFT JOIN
LEFT JOIN 
    Reservation r ON u.Id_Utilisateur = r.Id_Utilisateur
-- On groupe les résultats par utilisateur pour que COUNT() donne le bon total
GROUP BY 
    u.Id_Utilisateur, 
    u.numero_etudiant, 
    u.Nom, 
    u.Prenom
-- On trie le résultat final par numéro d’étudiant
ORDER BY 
    u.numero_etudiant;
