<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset=".github/brand/brainlife-mark-on-dark.svg">
    <img src=".github/brand/brainlife-mark-on-light.svg" alt="brainlife.io" width="140">
  </picture>
</p>

<h1 align="center">dockerfiles</h1>

<p align="center">
  The shared container images behind brainlife.io Apps.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-maintained-blue.svg" alt="Status: maintained">
  <a href="https://brainlife.io"><img src="https://img.shields.io/badge/brainlife.io-site-3b9fd0.svg" alt="brainlife.io"></a>
  <a href="https://brainlife.io/docs"><img src="https://img.shields.io/badge/Docs-brainlife.io%2Fdocs-005981.svg" alt="Documentation"></a>
  <a href="https://doi.org/10.1038/s41592-024-02237-2"><img src="https://img.shields.io/badge/DOI-10.1038%2Fs41592--024--02237--2-e57536.svg" alt="Nature Methods paper"></a>
</p>

## 🧠 At a glance

| | |
|---|---|
| 🧭 **What** | One folder per image: FreeSurfer (several versions), FSL 5.0.9–6.0.5, MRtrix3, ANTs, DIPY, MNE (+FreeSurfer), Connectome Workbench, HCP Pipelines, MATLAB Compiler Runtimes, TractSeg, Trekker, VTK, Octave and more |
| 🕰️ **Last change** | 2026-01-19 (MNE 1.11 with FreeSurfer 7.4.1) |

## 🚀 Build an image

```bash
git clone https://github.com/brainlife/dockerfiles && cd dockerfiles/<image>
docker build -t brainlife/<image>:<version> .
```

Each folder holds its own `Dockerfile` (and often a `build.sh` with the tag it publishes). Old images live in `archive/`.

## 🔗 Related

[ants-docker](https://github.com/brainlife/ants-docker) · [abcd-spec](https://github.com/brainlife/abcd-spec) (how Apps use containers)

## 📚 Citing

If you use brainlife.io in your work, please cite:

> Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)

## 🤝 Contributing

Issues and pull requests are welcome in this repository. For help using brainlife.io, see the [documentation](https://brainlife.io/docs).

## ⚖️ License

This repository does not include a license file yet.

<p align="center"><sub>brainlife.io · Brain data across scales. One place to analyze, share and publish it. · The University of Texas at Austin</sub></p>
