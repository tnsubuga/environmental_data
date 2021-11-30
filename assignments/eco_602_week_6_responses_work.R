#Recreating the Bolker Table 1.2 (on the top of page 11) to calculate the seed predation rates.

# Clear your R environment to make 
# sure there are no stray variables.

rm(list = ls())

pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = 210
  pol_predation_rate = pol_n_predation/pol_n_total
  
  psd_n_predation = 25
  psd_n_no_predation = 706
  psd_n_total = 731
  psd_predation_rate = psd_n_predation/psd_n_total
  
  print(
    paste0(
      "The seed predation rate for Polyscias fulva is: ",
      round(pol_predation_rate, digits = 3))) 
  
  print(
    paste0(
      "The seed predation rate for Pseudospondias microcarpa is: ",
      round(psd_predation_rate, digits = 3)))
  
# Use the seed predation proportions you calculated to determine the ratio 
#  of seed predation proportions.
  
ratio_seed_predation_rate = pol_predation_rate/psd_predation_rate  
  
print(
  paste0(
    "The ratio of seed predation proportions is: ",
    round(ratio_seed_predation, digits = 3)))  

