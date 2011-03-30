mdrun-rerun
-----------
Run make\_tpr.sh followed by run\_md.sh. This will create three trajectories:

1. `cpeptide_md.trr` - the no-forces trr. No forces are written to this
    trajectory.
2. `cpeptide_md-with-forces.trr` - the with-forces trr. Forces are written to
    this trajectory.
3. `cpeptide_md-rerun.trr` - created by mdrun -rerun, using the with-forces
    tpr on the no-forces trr

If all goes well, the forces in `cpeptide_md-with-forces.trr` and
`cpeptide_md-rerun.trr` should be identical.

TODO
----
- A quick script to compare the forces in `cpeptide_md-with-forces.trr` and 
  `cpeptide_md-rerun.trr`, using gmxdump/g_traj and diff.
