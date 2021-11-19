# Description of modifications to the CIT168 Atlases

The CIT 168 atlases are available [here](https://neurovault.org/collections/3145/).  However, there are several modifications that have been made to the original atlas files in order to facilitate their use.  These modifications are described below.

## Lateralization

The original (probabilistic) atlases are not lateralized.  However, particularly for tracking purposes, specification of left and right structures is important.  As such a heuristic from [nilearn](https://nilearn.github.io/) (depicted [here](https://github.com/nilearn/nilearn/blob/4d8a7113f4e2510c7d0e65e13f2e1b9f14749a0f/nilearn/datasets/atlas.py#L269)) was applied to split them into l_* and r_* variants.  

## Merging

Because various scripts in [atlaskit](https://github.com/jmtyszka/atlaskit) presume that the atlas is a 4D volume, it was necessary to use [fslmerge](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Fslutils) to merge the atlases.
