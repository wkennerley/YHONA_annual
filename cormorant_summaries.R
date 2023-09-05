# Script for summarizing YHONA cormorant data
library(googlesheets4)

# Read in data from Google Drive
cormdat <- read_sheet("https://docs.google.com/spreadsheets/d/1VAYO1ymj4uZ5lZL-S9KEfMNoW7QdFUAq8AKaVgPIsNg/edit?usp=drive_link")

# View data
View(cormdat)

# Convert to date formats
cormdat$first_obs_date <- as.POSIXct(cormdat$first_obs_date, format = "%Y-%M-%D", 
                                     options(digits.secs = 3), tz = "America/New_York")
cormdat$first_egg_obs <- as.POSIXct(cormdat$first_egg_obs, format = "%Y-%M-%D", 
                                    options(digits.secs = 3), tz = "America/New_York")
cormdat$chick_first_obs <- as.POSIXct(cormdat$chick_first_obs, format = "%Y-%M-%D", 
                                      options(digits.secs = 3), tz = "America/New_York")
cormdat$last_obs_date <- as.POSIXct(cormdat$last_obs_date, format = "%Y-%M-%D", 
                                    options(digits.secs = 3), tz = "America/New_York")
class(cormdat$first_obs_date)


###################################################################
# Summary of Monitoring Effort

# Calculate number of visits

# Calculate number of observer-hours

###################################################################
# Cormorant Summary Data
# Calculate mean clutch size

# Calculate median hatch date

# Calculate hatch success

# Calculate number fledged

# Calculate fledging success

# Calculate productivity

# Histogram of cormorant clutch sizes

# Relationship between # eggs and # fledged by species