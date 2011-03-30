#!/bin/csh

# Run this to generate tpr files from cpeptide_b4md.gro, cpeptide.top, and the various md files

setenv MOL cpeptide

#################
### GROMPP MD ###
#################

echo "Starting grompp (no force writing)..."
grompp -f md -c ${MOL}_b4md  -p ${MOL} -o ${MOL}_md >& ! output.grompp_md
echo "grompp finished"

echo "Starting grompp (with force writing)..."
grompp -f md-with-forces -c ${MOL}_b4md  -p ${MOL} -o ${MOL}_md-with-forces \
    -po md-with-forcesout >& ! output.grompp_md-with-forces
echo "grompp finished"
