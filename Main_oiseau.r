# Date: 11 mars 2024
# Jeux de donnees: acoustique_oiseaux
# Equipe: Angelique Cornellier
#         Emy Chevrette
#         Coralie Mimeault
#         Stephanie Morin-Beaumier

# 1-Setter le work directory vers les donnees "acoustique_oiseaux".

# 2-Combiner les fichiers csv et extraire les données.

source("fonction_combiner.r")
donnee_oiseau <- Combine_csv()

# 3-Nettoyage des données.

#   Remplacer les termes "NULL" par "NA".

source("fonction_na.r")
donnee_oiseau <- remplacer_NULL_par_NA(donnee_oiseau)

#   Uniformiser le format des dates.

source("fonction_date.r")
donnee_oiseau <- convertir_date(donnee_oiseau, "date_obs")

#   Verifier que les données de latitude se retrouvent bien au Quebec, 
#   soit entre les valeurs 45 et 63.

source("fonction_lat.r")
resultat_verification <- verifier_limites_latitude(donnee_oiseau, "lat")

