#!/bin/bash
set -e
set -x

mkdir -p bin
cp $FREESURFER_HOME/bin/mri_convert bin/mri_convert
cp $FREESURFER_HOME/bin/mri_vol2vol bin/mri_vol2vol
cp $FREESURFER_HOME/bin/mri_vol2surf bin/mri_vol2surf
cp $FREESURFER_HOME/bin/mri_binarize bin/mri_binarize
cp $FREESURFER_HOME/bin/mri_mask bin/mri_mask

cp $FREESURFER_HOME/bin/mris_convert bin
cp $FREESURFER_HOME/bin/mri_surf2vol bin
cp $FREESURFER_HOME/bin/mri_surf2surf bin
cp $FREESURFER_HOME/bin/mri_label2vol bin
cp $FREESURFER_HOME/bin/mri_info bin
cp $FREESURFER_HOME/bin/mri_annotation2label bin
