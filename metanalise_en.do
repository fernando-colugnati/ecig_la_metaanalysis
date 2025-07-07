
*Current use - adults
clear
import excel "/Users/fernandocolugnati/Library/CloudStorage/GoogleDrive-fernando.colugnati@ufjf.br/Meu Drive/MetaAnaliseVape/meta_analysis_data", sheet("Planilha de dados") firstrow clear
collapse (sum) n_use n_age_bin if age_bin_code>1, by(study country)
drop if n_age_bin==0
drop if n_use==0
replace n_use= round(n_use)
replace n_age_bin= round(n_age_bin)
meta esize n_use n_age_bin, esize(proportion) studylabel(study)
meta summarize, random(reml) subgroup(country) proportion
meta summarize, random(reml) subgroup(specific_pop) proportion
meta forestplot, random(reml) proportion

* Current use - adolescents
clear
import excel "/Users/fernandocolugnati/Library/CloudStorage/GoogleDrive-fernando.colugnati@ufjf.br/Meu Drive/MetaAnaliseVape/meta_analysis_data", sheet("Planilha de dados") firstrow clear
collapse (sum) n_use n_age_bin if age_bin_code==1, by(study country)
drop if n_age_bin==0
drop if n_use==0
replace n_use= round(n_use)
replace n_age_bin= round(n_age_bin)
meta esize n_use n_age_bin, esize(logitprop) studylabel(study)
meta summarize, random(reml) subgroup(country) proportion
meta summarize, random(reml) subgroup(specific_pop) proportion
meta forestplot, random(reml) proportion

* Use in lifetime - adults
clear
import excel "/Users/fernandocolugnati/Library/CloudStorage/GoogleDrive-fernando.colugnati@ufjf.br/Meu Drive/MetaAnaliseVape/meta_analysis_data", sheet("Planilha de dados") firstrow clear
collapse (sum) n_exp n_age_bin if age_bin_code>1, by(study country)
drop if n_age_bin==0
drop if n_exp==0
replace n_experimented= round(n_experimented)
replace n_age_bin= round(n_age_bin)
meta esize n_experimented n_age_bin, esize(logitprop) studylabel(study)
meta summarize, random(reml) subgroup(country) proportion
meta summarize, random(reml) subgroup(specific_pop) proportion
meta forestplot, random(reml) proportion


* Use in lifetime - adolescents
clear
import excel "/Users/fernandocolugnati/Library/CloudStorage/GoogleDrive-fernando.colugnati@ufjf.br/Meu Drive/MetaAnaliseVape/meta_analysis_data", sheet("Planilha de dados") firstrow clear
collapse (sum) n_exp n_age_bin if age_bin_code==1, by(study country)
drop if n_age_bin==0
drop if n_exp==0
replace n_experimented= round(n_experimented)
replace n_age_bin= round(n_age_bin)
meta esize n_experimented n_age_bin, esize(logitprop) studylabel(study)
meta summarize, random(reml) subgroup(country) proportion
meta summarize, random(reml) subgroup(specific_pop) proportion
meta forestplot, random(reml) proportion

