#! /bin/bash

# LOAD GLOBAL VARIABLES AND MODULES ON THE CLUSTER
source globals.sh   
module load fsl/6.0.2
module load pydeface/2.0.0 

sid=$1

subj_dir=sub-$sid

T1=$bids_dir/derivatives/fmriprep/$subj_dir/ses-1/anat/${subj_dir}_ses-1_desc-preproc_T1w.nii.gz
pydeface $T1

T1_defaced=$bids_dir/derivatives/fmriprep/$subj_dir/ses01/anat/${subj_dir}_ses-1_desc-preproc_T1w_defaced.nii.gz
mv $T1_defaced $defaced_dir
