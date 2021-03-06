KITSUNETSUKI SDK
================


What's Inside
-------------

* ![logo](conda/bullet/icon_32.png) [Bullet Physics SDK](conda/bullet) (prebuilt with headers included)
* ![logo](conda/panda3d/icon_32.png) [Modified Panda3D Game Engine](conda/panda3d) (prebuilt with headers included)
* ![logo](conda/kcc/icon_32.png) [KITSUNETSUKI Character Controller](conda/kcc)
* [Modified RenderPipeline Render for Panda3D](conda/render_pipeline) (with native lighting manager enabled)
* [Blender](conda/blender) (as a Python module)


Files and directories structure
-------------------------------

* [conda](conda) - conda package recipes for anaconda/miniconda
* [README.md](README.md) - this file
* [ksdk.yml](ksdk.yml) - conda environment file


SDK Requirements
----------------

You have to install those software packages to use the prebuild SDK.

* Anaconda3 or Miniconda3 (version 4.5.11, Python 3.7) - https://conda.io/en/latest/miniconda.html


Installation
------------

```
conda env create kitsune.one/ksdk
conda activate ksdk
```


Uninstallation
------------

```
conda deactivate
conda env remove -n ksdk
```


Building Requirements (Windows)
-------------------------------

You have to install those software packages if you want to modify and build your own SDK.

* Visual Studio Build Tools 2017


Building Requirements (Linux)
-----------------------------

You have to install those software packages if you want to modify and build your own SDK.

* Ubuntu 16.04
* Glu
* Mesa
* NVIDIA Cg
* Ogg
* OpenAL
* Vorbis
* Xv
