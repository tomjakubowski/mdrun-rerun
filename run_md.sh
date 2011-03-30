#!/bin/csh

# Run this after make_tpr.sh to execute the mdrun commands

setenv MOL cpeptide

################
### MDRUN MD ###
################

echo "Starting mdrun (no force writing)..."
mdrun -nice 4 -s ${MOL}_md -o ${MOL}_md \
    -c ${MOL}_after_md -v >& ! output.mdrun_md
echo "mdrun finished"

echo "Starting mdrun (with force writing)..."
mdrun -nice 4 -s ${MOL}_md-with-forces -o ${MOL}_md-with-forces \
    -c ${MOL}_after_md-with-forces -v >& ! output.mdrun_md-with-forces
echo "mdrun finished"

echo "Starting mdrun -rerun..."
mdrun -nice 4 -s ${MOL}_md-with-forces -o ${MOL}_md-rerun \
    -c ${MOL}_after_md-rerun -rerun ${MOL}_md -v >& ! output.mdrun_md-rerun
echo "mdrun finished"