#!/bin/bash

#reformatting pyrad output with fineRADstructure-tools
~/Usnea/Usnea_RAD1234/6-pyrad7/outfiles$ python ~/git/fineRADstructure-tools/finerad_input.py --input c90d6m4p3.alleles --minsample 4
#3804 loci for 101 samples written to c90d6m4p3.alleles.min4.finerad

#fineRADstructure
mkdir 12-fineRADstructure
cd 12-fineRADstructure
cp ../6-pyrad7/outfiles/c90d6m4p3.alleles.min4* .
Rscript ~/git/fineRADstructure/sampleLD.R -s 1 -n 500 c90d6m4p3.alleles.min4.finerad c90d6m4p3.alleles.min4.reordered
# "Writing data to c90d6m4p3.alleles.min4.reordered"

~/git/fineRADstructure/RADpainter paint -p 1 c90d6m4p3.alleles.min4.finerad
# Painting RAD tags from: c90d6m4p3.alleles.min4.finerad
# No location ("Chr") info found - assuming the input is a simple data matrix
# The file seems to be in a SimpleMatrix format
# Processed: 100 tag loci
# [...]
# Processed: 3800 tag loci
# EL0001_11       3737.65
# EL0001_11       3804
# Printing missingness per individual to: c90d6m4p3.alleles.min4_missingness.out
# Theoretical c = 0.01
# Jackknife c = 0.138051
# notInformative = 0
# Printing the final coancestry matrix to c90d6m4p3.alleles.min4_chunks.out
# Analysis completed in: 31.1333 seconds (0.00818437 seconds per RAD locus)
~/git/fineRADstructure/finestructure -x 100000 -y 100000 -z 1000 c90d6m4p3.alleles.min4_chunks.out c90d6m4p3.alleles.min4_chunks.mcmc.xml
~/Usnea/Usnea_RAD1234/12-fineRADstructure$ ~/git/fineRADstructure/finestructure -m T -x 10000 c90d6m4p3.alleles.min4_chunks.out c90d6m4p3.alleles.min4_chunks.mcmc.xml c90d6m4p3.alleles.min4_chunks.mcmcTree.xml

#FinestructureGUI for visualization
