update materiel
set nombre_element = nombre_element - 1
where id_materiel in ( -- on choisit les materiels dont la date de retour est dans 2 jours ou plus
	select id_materiel
	from reservation
	where datefin > current_date + interval '2 days' 
)