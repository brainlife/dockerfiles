echo $FREESURFER_LICENSE > license
singularity exec -B `pwd`/license:/usr/local/freesurfer/.license docker://brainlife/freesurfer-mini:7.1.1 mri_convert ../test.mgz test.nii.gz
