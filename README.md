# Olsen_Analyses
Analysis for genetic screening and metabolomics identify glial adenosine metabolism as a therapeutic target in Parkinson’s disease

This project contains the analysis of metabolite abundance measurements obtained with four different liquid chromatography mass spectrometry methods of synuclein expressing or control or fly brains in a wilde type or Adk1 knockout background. 

## Table of contents
### Prerequisites
- R (version 4.3.1 or higher)
- RStudio (optional, but recommended)

### R Packages
The following R packages are required. You can install them using the commands below:

```r
install.packages(c("readxl", "calibrate", "dplyr", "ggplot2"))
```
### Package versions
- ggplot2_3.5.1
- dplyr_1.1.4
- yaml_2.3.8
- calibrate_1.7.7
- readxl_1.4.3   

## Project Structure
- `code/`: Contains the R scripts for the analysis.
- `data/`: Processed data files.
  - `22_0322_alphaSyn_fly_pilot_Classes.xlsx`: metabolite profiling data
  - `dup_metabs_decision.csv`: Table defining which metabolites profiled in more than one method should be used.
- `results/`: Output files, including plots and tables.
- `common_functions/`: Custom R functions used in the analysis.
- `config.yml`: Configuration file for setting paths.
