# UpperPalCombinatorics

This repository contains data and code to work on the statistical properties of Upper Paleolithic geometric signs.

## Data

- signBase: Codings for geometric signs on Upper Paleolithic objects are given as csv file in data/signBase/.
- nalafi: Comparative sample of diverse languages and other symbol systems are given in data/nalafi_signs/.

## Code

The code should be run in the following order:

Preprocessing:
- preprocessing.Rmd: Removal of empty lines (without sign codings) from the original files, as well as removal of special characters and non-discrete strings. This outputs a file with cleaned codings. 

Randomization:
- randomization.Rmd: Provides code for randomizing sign strings found on objects.

Estimation:
- estimations.Rmd: Estimates quantitative features (entropy, entropy rate, TTR, repetition rate) for each sequence of signs provided as output by the preprocessing and randomization files above. The output is a csv file with these feature values per sample of sign sequences (one in each row).

References
Bentz, C. (2023). The Zipfian Challenge: Learning the statistical fingerprint of natural languages. In: Proceedings of the 27th Conference on Computational Natural Language Learning (CoNLL 2023). 
