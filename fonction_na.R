# Date: 11 mars 2024
# Jeux de donnees: acoustique_oiseaux
# Equipe: Angelique Cornellier
#         Emy Chevrette
#         Coralie Mimeault
#         Stephanie Morin-Beaumier


# Fonction qui permet de remplacer les termes "NULL" par "NA".

remplacer_NULL_par_NA <- function(df) {
  df[df == "NULL"] <- NA
  return(df)
}


