#!/bin/bash

raxmlHPC-PTHREADS -n usnea_combined1234_ant -s ../6-pyrad7/outfiles/c90d6m4p3.unlinked_snps -m GTRGAMMA -f a -p 194955 -x 12345 -# 100 -T 6

# Final ML Optimization Likelihood: -86356.666701

# Model Information:

# Model Parameters of Partition 0, Name: No Name Provided, Type of Data: DNA
# alpha: 1.398115
# Tree-Length: 6.429335
# rate A <-> C: 1.110436
# rate A <-> G: 4.771814
# rate A <-> T: 0.775697
# rate C <-> G: 1.098551
# rate C <-> T: 5.417216
# rate G <-> T: 1.000000

# freq pi(A): 0.232535
# freq pi(C): 0.246844
# freq pi(G): 0.290208
# freq pi(T): 0.230413