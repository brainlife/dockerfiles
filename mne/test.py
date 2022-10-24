
import os
import mne
import pyvista as pv
from pathlib import Path
os.environ["MNE_3D_OPTION_ANTIALIAS"] = "false"

from pyvista.utilities import xvfb
xvfb.start_xvfb()
mne.viz.set_3d_backend("notebook")

data_path = Path(mne.datasets.sample.data_path(verbose=False))
sample_dir = data_path / 'MEG' / 'sample'
subjects_dir = data_path / 'subjects'

raw_path = sample_dir / 'sample_audvis_filt-0-40_raw.fif'

print("----------------1")
report = mne.Report(title='BEM example')
print("----------------2")
report.add_bem(
    subject='sample', subjects_dir=subjects_dir, title='MRI & BEM',
    decim=20,
    width=256
)

trans_path = sample_dir / 'sample_audvis_raw-trans.fif'

print("----------------3")
report.add_trans(
    trans=trans_path, info=raw_path, subject='sample',
    subjects_dir=subjects_dir, alpha=1.0, title='Coregistration'


)

print("----------------4")
fwd_path = sample_dir / 'sample_audvis-meg-oct-6-fwd.fif'
report.add_forward(forward=fwd_path, title='Forward solution')

report.save('report_mri_and_bem.html', overwrite=True)
