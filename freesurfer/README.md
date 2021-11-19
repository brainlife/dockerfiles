# docker-freesurfer

Docker base image for freesurfer apps

```
[[ -z "$FREESURFER_LICENSE" ]] && echo "Please set FREESURFER_LICENSE in .bashrc" && exit 1;
echo $FREESURFER_LICENSE > license.txt

singularity exec -e -B `pwd`/license.txt:/usr/local/freesurfer/license.txt  docker://faskowit/app-multiatlastt recon-all -h

```
