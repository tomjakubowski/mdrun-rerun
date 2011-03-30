#!/bin/csh

foreach junk (\#* *.tpr *out.mdp *after*gro output* *.trr *.log *.edr *.cpt tmp/*)
    rm $junk > /dev/null
end
