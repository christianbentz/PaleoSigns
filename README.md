# UpperPalCombinatorics

This repository contains data and code to work on the statistical properties of Upper Paleolithic geometric signs of the Swabian Aurignacian.

## Data

- signBase: Codings for geometric signs on Upper Paleolithic objects are given as csv file in data/signBase/.
- TeDDi: Comparative sample of diverse languages and other symbol systems are given in data/TeDDi/.
- Proto-Cuneiform: Samples of transliterated sign strings of proto-cuneiform periods is given in data/CDLI/.

## Code

The code should be run in the following order:

Preprocessing:
- preprocess_TeDDi.Rmd: preprocessing of the TeDDi sample lines with raw text. This outputs a predefined number of randomly sampled TeDDi raw text lines to data/TeDDi/final_sample.csv.
- preprocess_SignBase.Rmd: preprocessing of sign sequences from www.signbase.org. The clean sequences are output to data/signBase/signBase_clean.csv.
- preprocess_Cunei.Rmd: preprocessing of sign sequences from CDLI. This code needs to be run separately for each proto-cuneiform period. The clean sequences are output for example to data/CDLI/UrukV/signs_clean.csv. 

Randomization:
- randomization.Rmd: Provides code for randomizing sign strings found on paleolithic objects. As discussed in the file, this does not apply to modern writing and proto-cuneiform writing. The randomized output is added to the original file with cleaned sign codings as a separate column, and then safed under data/signBase/signBase_randomized.csv. 

Estimation:
- estimation_TeDDi.Rmd: Estimates quantitative features (entropy, entropy rate, TTR, repetition rate) for each sequence of characters in the TeDDi lines sample. The results are output to results/features/teddi_features.csv.
- estimation_SignBase.Rmd: Estimates quantitative features (entropy, entropy rate, TTR, repetition rate) for each sequence of characters in the SignBase data. The results are output to results/features/signBase_features.csv.
- estimation_Cunei.Rmd: Estimates quantitative features (entropy, entropy rate, TTR, repetition rate) for each sequence of characters in the Proto-Cuneifrorm data from CDLI. The results are output to results/features/cuneiform_<period>_features.csv.
- estimations_Comb.Rmd: This code combines the different data frame formats of the individual feature estimations (TeDDi, SignBase, CDLI) into one data frame with common column names for later processing. The combined file is output to results/features/features_combined.csv.

## Main Analyses
- analyses_featureDistributions.Rmd: Analyses of feature value distributions per type of subcorpus, i.e. modern writing (TeDDi), proto-cuneiform (CDLI), and paleolithic signs (SignBase). This includes density plots for the four features (TTR, entropy rate, unigram entropy, and repetition rate), correlation plots between these features, and a PCA analysis with visualization.
- analyses_Classification_KNN.Rmd: K-Nearest-Neighbors classification of sequences into groups (Aurignacien, Uruk V-Uruk III, and TeDDi) by using the feature values per sequence. The code outputs classification results (accuracy, F1-score, etc.) as well as actual predicted and observed labels for post hoc analyses. Output files are written to results/classifier/KNN.
- analyses_Classification_MLP.Rmd: Multi-Layer-Perceptron classification of sequences into groups (Aurignacien, Uruk V- Uruk III, and TeDDi) by using the feature values per sequence. The code outputs classification results (accuracy, F1-score, etc.) as well as actual predicted and observed labels for post hoc analyses. Output files are written to results/classifier/MLP.

## Secondary Analyses
- analyses_Stabilization.Rmd: Analyses of the feature values with growing number of character tokens.
- analyses_Randomization.Rmd: Comparison of entropy rates for original sign sequences of signBase to randomized sign sequences.
- analyses_Aurignacian.Rmd: Further analyses of the relationship between feature values (e.g. entropy rates) and meta information (e.g. object type, material, volume, etc.) per object of the Swabian Aurignacian.

## Maps
- signBase_siteMaps: Code for creating maps of the Swabian Aurignacian sites.

References

Bentz, C. (2023). The Zipfian Challenge: Learning the statistical fingerprint of natural languages. In: Proceedings of the 27th Conference on Computational Natural Language Learning (CoNLL 2023). 
