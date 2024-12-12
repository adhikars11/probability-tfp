/*******************************************************************************
* Shisham Adhikari
* UC Davis
* Dec 12, 2024
*******************************************************************************/

/*******************************************************************************
** 1. Merging price level data by economic activity and type of goods
*******************************************************************************/

global base "/Users/shishamadhikari/Desktop/probability-tfp"

clear

import excel "/Users/shishamadhikari/Desktop/probability-tfp/Empirics/data/tfp.xlsx", sheet("Baseline") firstrow
rename FAO country_id
rename ISO3 iso
rename Countryterritory country
rename TFP_Index tfp_index
rename Year year

// Keep only necessary variables
keep iso year tfp_index

// Check for duplicates and clean
duplicates drop
destring year, replace
use tfp_clean.dta, clear
duplicates report iso year
duplicates drop iso year, force
duplicates report iso year
save tfp_clean.dta, replace

// Load the climate shock dataset
use "/Users/shishamadhikari/Desktop/probability-tfp/Empirics/data/em_dat_month.dta", clear
// Extract year directly from the numeric `date` variable
gen year = 1960 + floor(date / 12)

// Save the cleaned climate shocks data
collapse (sum) drought ext_temp storm, by(iso year)

// Merge the two datasets by iso and year
merge 1:1 iso year using tfp_clean.dta, keep(match) keepusing(tfp_index)

// Check merge results
tab _merge

// Drop unnecessary _merge variable
drop _merge

// Step 6: Save the annual data
save annual_shocks_by_country.dta, replace

// Step 7: Local Projection to Assess Effect of Temperature Shocks on TFP

// Load merged data for analysis
clear
use annual_shocks_by_country.dta, clear

encode iso, gen(iso_numeric) // Create numeric version of iso for panel data
xtset iso_numeric year

// Define maximum horizon for local projections
local hmax = 10

// Generate lead variables for TFP
forvalues h = 0/`hmax' {
    gen tfp_lead`h' = tfp_index[_n+`h'] - tfp_index
}

// Generate variables for the local projection response
cap drop b u d Months Zero
gen Months = _n-1 if _n <= `hmax' + 1
gen Zero = 0 if _n <= `hmax' + 1
gen b = 0
gen u = 0
gen d = 0

// Run cumulative regressions with country fixed effects and lagged TFP
forvalues h = 0/`hmax' {
    xtreg tfp_lead`h' ext_temp l(1/2).tfp_index i.iso_numeric i.year, fe vce(cluster iso_numeric)
    replace b = _b[ext_temp] if _n == `h' + 2
    replace u = _b[ext_temp] + 1.645 * _se[ext_temp] if _n == `h' + 2
    replace d = _b[ext_temp] - 1.645 * _se[ext_temp] if _n == `h' + 2
}

// Plot cumulative response
twoway ///
(rarea u d Months, fcolor(gs13) lcolor(gs13) lw(none) lpattern(solid)) ///
(line b Months, lcolor(blue) lpattern(solid) lwidth(thick)) ///
(line Zero Months, lcolor(black)), legend(off) ///
title("Cumulative Response of TFP to Temperature Shock", color(black) size(medsmall)) ///
ytitle("Percent", size(medsmall)) xtitle("Months", size(medsmall)) ///
graphregion(color(white)) plotregion(color(white)) ysize(6) xsize(5)
