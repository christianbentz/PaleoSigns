# UpperPalCombinatorics

This repository contains data and code to work on the combinatorics of Upper Paleolithic geometric signs.

## Data

- Aurignacian objects: Sign codings for Aurignacian objects of the Swabian Jura are given in data/aurignacian/signBase_Version1.0_CodingsUTF8.csv.
- Magdalenian deer teeth: Sign codings for Magdalenian deer teeth of the Saint-Germain-la-Rivière burial are given in data/magdalenian/StGermain_original.csv

## Code

The code should be run in the following order:

Preprocessing:
- preprocessing.Rmd: Removal of empty lines (without sign codings) from the original files, as well as removal of special characters and non-discrete strings. This outputs a file with cleaned codings. 

Randomization:
- randomization.Rmd: Provides code for randomizing and concatenating sign strings of the Magdalenian as well as Aurignacian period. It outputs files with a chosen number of randomized strings.

Estimation:
- estimations.Rmd: Estimates quantitative features (entropy, entropy rate, TTR, repetition rate) for each sample sequence of signs provided as output by the preprocessing and randomization files above. The output is a csv file with these feature values per sample of sign sequences (one in each row).

References
Bentz, C. (2023). The Zipfian Challenge: Learning the statistical fingerprint of natural languages. In: Proceedings of the 27th Conference on Computational Natural Language Learning (CoNLL 2023). 
