# Date: 11 mars 2024
# Jeux de donnees: acoustique_oiseaux
# Equipe: Angelique Cornellier
#         Emy Chevrette
#         Coralie Mimeault
#         Stephanie Morin-Beaumier


# Fonction qui permet de combiner tous les fichiers de donnees csv en un seul dataframe.

Combine_csv<-function(){

files <- list.files(pattern=".csv")


dataframes <- list()


for(file in files) {
  
  df_name <- sub("\\.csv$", "", file)
  
  data <- read.csv(file,encoding="UTF-8")
  
  dataframes[[df_name]] <- data
}


combined_df <- do.call(rbind, dataframes)
return(combined_df)
}


