Modified RenderPipeline Render for Panda3D
==========================================

https://github.com/tobspr/RenderPipeline/


Building conda package
----------------------

```
git clone https://github.com/Yonnji/KITSUNETSUKI-SDK.git
cd conda/render_pipeline
conda build .
conda install panda3d-rp-kitsunetsuki --use-local
```


Installing prebuild conda package
---------------------------------

```
conda config --add channels kitsune.one
conda install panda3d-rp-kitsunetsuki
```
