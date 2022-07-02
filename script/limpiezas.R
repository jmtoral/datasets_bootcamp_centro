# Tratamiento, limpieza y organización de los datasets para el Bootcamp


# Bibliotecas -------------------------------------------------------------

library(tidyverse)
library(readxl)

# Datos -------------------------------------------------------------------


## Audio features Top 50 -------------------------------------------------


billboard_spotify <- read_csv("data/song_billboard_spotify.csv") |>
  group_by(Artist, Track) |> 
  mutate(Max_Number_Weeks = max(Number_Weeks)) |> 
  mutate(Best_Peak_Position = min(Peak_Position)) |>
  select(id, Track, Artist, Best_Peak_Position, 
         Max_Number_Weeks, dist_cos:tempo, duration_ms,
         time_signature) |> 
    ungroup() |> 
  distinct()
  

write.csv(billboard_spotify, "output/billboard_spotify.csv", row.names = F)


## Billboard Top 50 -------------------------------------------------

# No hubo necesidad de limpieza



