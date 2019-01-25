########################################################################
#          Phospho-proteomic analysis of M. tuberculosis PknB          #
#                   over-expression in M. smegmatis                    #
########################################################################

Marie Locard-Paulet - January 2019

This repository contains the working documents that were used for the analysis of the phospho-proteome of Mycobacterium smegmatis after over-expression of the M. tuberculosis kinase PknB. The idea is to identify its potential substrates.

This study is related to the following paper:
%%%%%% TO COME %%%%%%

Folder organisation:
- All the input files of the analysis (output tables from Proteome Discoverer with the quantification and identification data from the MS runs) are in the folder `RAW`, with the mapping tables used for the analysis (experimental plan and so on). `MappingTableProtUniprot_20180117.txt` contains the mapping IDs from a Uniprot download.
- `RData` contains the intermediate .R files that were saved during the analysis.
- `RScriprs` contains the R scripts used for the analysis.
- `Random` contains some pre-processing analysis.

The .Rmd files (and output .html report files) that contain the analysis script are the following:
- `01_DataAnalysis`: quality control, normalisation and statistical analysis.

