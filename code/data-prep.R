library('tmaptools')
library('tidyverse')

df <- read_csv('../data/dataset.csv')

# This geocode_OSM call sends your address data as URL parameters
# to: https://nominatim.openstreetmap.org/search?
geocoded_data = geocode_OSM(df$address)

prepared_data = bind_cols(df, geocoded_data)

write_csv(prepared_data, '../data/prepared-dataset.csv')

