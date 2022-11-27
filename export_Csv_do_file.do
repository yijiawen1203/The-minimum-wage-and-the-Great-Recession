cd "/Users/yoga/Documents/Projects/10Eco_applied eco_replicate mini wage/SIPP/the_downloaded_data"
capture log close
log using export_csv, text replace
clear all
//set linesize 85
macro drop _all
set linesize 85

sysuse sippl08puw12.dta


outsheet ssuid tage tpyrate1 tfipsst euectyp5 eawop rmhrswk ehrsall ehrsbs1 ehrsbs2 thearn thtotinc rhpov rfpov rfownkid eeducate rhcalmn rhcalyr using test12.csv , comma 

clear
