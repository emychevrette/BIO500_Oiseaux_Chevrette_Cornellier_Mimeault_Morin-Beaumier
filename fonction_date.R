# Date: 11 mars 2024
# Jeux de donnees: acoustique_oiseaux
# Equipe: Angelique Cornellier
#         Emy Chevrette
#         Coralie Mimeault
#         Stephanie Morin-Beaumier


# Fonction qui permet d'uniformiser le format des dates.

convertir_date <- function(df, colonne_date) {
  df[[colonne_date]] <- as.Date(df[[colonne_date]], format = "%d/%m/%Y")
  return(df)
}

