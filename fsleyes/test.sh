singularity exec docker://brainlife/fsleyes:1.0 xvfb-run -s "-screen 0 640x480x24" fsleyes render --scene 3d --outfile test.png 5e3c36cb9362b73a54f9b82d/t1.nii.gz
#singularity exec docker://brainlife/fsleyes:1.0 fsleyes render 5e3c36cb9362b73a54f9b82d/t1.nii.gz
