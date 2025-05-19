select
	m.Id_Materiel,
	m.Nom
from
	Materiel m
inner join
    Reservation r ON r.Id_Materiel = m.Id_Materiel
where r.Id_Utilisateur = 2;