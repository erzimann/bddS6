select 
    u.Id_Utilisateur,
    u.Nom,
    u.Prenom,
    r.Id_Reservation,
    r.DateDebut,
    r.DateFin
from 
    Utilisateur u
join 
    Reservation r ON u.Id_Utilisateur = r.Id_Utilisateur;
