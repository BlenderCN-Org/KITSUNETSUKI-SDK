#!/bin/bash

if [ "${ARCH}" = "64" ]; then
    LARCH=x86_64;
else
    LARCH=i386;
fi

LIBX=/lib/${LARCH}-linux-gnu
ULIBX=/usr/lib/${LARCH}-linux-gnu

pip install https://files.pythonhosted.org/packages/23/96/d828354fa2dbdf216eaa7b7de0db692f12c234f7ef888cc14980ef40d1d2/attrs-19.1.0-py2.py3-none-any.whl
pip install https://files.pythonhosted.org/packages/64/19/8b9066e94088e8d06d649e10319349bfca961e87768a525aba4a2627c986/oauth2-1.9.0.post1.tar.gz
pip install https://files.pythonhosted.org/packages/68/9c/a6c34e565351f0b04bcf6835e38bc4bd0647269dc48670e12eb99a3f5ef5/py-ubjson-0.12.0.tar.gz
pip install https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl
pip install https://files.pythonhosted.org/packages/75/d0/f213003c9deec99fb4f46e54580b93a3b121c487d9d6d888fc12267eb2a2/httplib2-0.12.1.tar.gz
pip install https://files.pythonhosted.org/packages/8c/46/4e93ab8a379d7efe93f20a0fb8a27bdfe88942cc954ab0210c3164e783e0/pyrsistent-0.14.11.tar.gz
pip install https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz
pip install https://files.pythonhosted.org/packages/77/de/47e35a97b2b05c2fadbec67d44cfcdcd09b8086951b331d82de90d2912da/jsonschema-2.6.0-py2.py3-none-any.whl
# pip install https://files.pythonhosted.org/packages/cd/e6/be1b2a6ebebdaf1f790f1e750bb720fbda0335c2a19601ea9d8bb5059f38/jsonschema-3.0.0-py2.py3-none-any.whl
# pip install https://files.pythonhosted.org/packages/d1/6a/4b2fcefd2ea0868810e92d519dacac1ddc64a2e53ba9e3422c3b62b378a6/setuptools-40.8.0-py2.py3-none-any.whl

mkdir -pv ${PREFIX}/kitsunetsuki-runtime/panda3d;
cp -fv ${CONDA_PREFIX}/lib/libpython3.7m.so.1.0   ${PREFIX}/kitsunetsuki-runtime
cp -fv ${CONDA_PREFIX}/lib/libcrypto.so.1.1       ${PREFIX}/kitsunetsuki-runtime
cp -fv ${CONDA_PREFIX}/lib/libssl.so.1.1          ${PREFIX}/kitsunetsuki-runtime
cp -fv ${CONDA_PREFIX}/lib/python3.7/os.py        ${PREFIX}/kitsunetsuki-runtime
cp -Rfv ${CONDA_PREFIX}/lib/python3.7/lib-dynload ${PREFIX}/kitsunetsuki-runtime

rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_bisect.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_bz2.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_codecs_*.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_crypt.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_csv.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_ctypes.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_ctypes_test.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_curses.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_curses_panel.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_heapq.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_lsprof.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_multibytecodec.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_opcode.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_pickle.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_sqlite3.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_testbuffer.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_testcapi.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_testimportmultiple.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_testmultiphase.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_tkinter.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/_xxtestfuzz.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/audioop.cpython-*-linux-gnu.s
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/fcntl.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/grp.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/mmap.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/nis.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/ossaudiodev.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/parser.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/resource.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/spwd.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/syslog.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/termios.cpython-*-linux-gnu.so
rm -fv ${PREFIX}/kitsunetsuki-runtime/lib-dynload/xxlimited.cpython-*-linux-gnu.so

cp -fv \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/panda3d/__init__.py \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/panda3d/*.so \
                                                  ${PREFIX}/kitsunetsuki-runtime/panda3d/
cp -fv \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/kcc.so \
                                                  ${PREFIX}/kitsunetsuki-runtime
cp -fv \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/httplib2/cacerts.txt \
                                                  ${PREFIX}/kitsunetsuki-runtime

cp -fv ${RECIPE_DIR}/Miniconda3-LICENSE.txt       ${PREFIX}/kitsunetsuki-runtime
cp -fv ${RECIPE_DIR}/Panda3D-LICENSE.txt          ${PREFIX}/kitsunetsuki-runtime
cp -fv ${RECIPE_DIR}/jsonschema-LICENSE.txt       ${PREFIX}/kitsunetsuki-runtime
cp -fv ${RECIPE_DIR}/oauth2-LICENSE.txt           ${PREFIX}/kitsunetsuki-runtime
cp -fv ${RECIPE_DIR}/py-ubjson-LICENSE.txt        ${PREFIX}/kitsunetsuki-runtime
cp -fv ${RECIPE_DIR}/py-ubjson-NOTICE.txt         ${PREFIX}/kitsunetsuki-runtime

cp -fv ${LIBX}/libpng12.so.0                      ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libCg.so                          ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libCgGL.so                        ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libogg.so.0                       ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libopenal.so.1                    ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libvorbis.so.0                    ${PREFIX}/kitsunetsuki-runtime
cp -fv ${ULIBX}/libvorbisfile.so.3                ${PREFIX}/kitsunetsuki-runtime

cp -fv \
   ${CONDA_PREFIX}/lib/libpanda*.so.1.10 \
   ${CONDA_PREFIX}/lib/libp3*.so.1.10 \
                                                  ${PREFIX}/kitsunetsuki-runtime

cp -fv ${CONDA_PREFIX}/lib/libp3openal_audio.so   ${PREFIX}/kitsunetsuki-runtime
cp -fv ${CONDA_PREFIX}/lib/libp3ptloader.so       ${PREFIX}/kitsunetsuki-runtime
cp -fv ${CONDA_PREFIX}/lib/libpandagl.so          ${PREFIX}/kitsunetsuki-runtime

7za a \
    -tzip -x@${RECIPE_DIR}/exclude.txt -xr@${RECIPE_DIR}/excluder.txt \
    ${PREFIX}/kitsunetsuki-runtime/python37.zip \
    "${CONDA_PREFIX}/lib/python3.7/*" \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/attr \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/direct \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/httplib2 \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/idna \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/jsonschema \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/oauth2 \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/pandac \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/pkg_resources \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/pyrsistent \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/six.py \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/ubjson \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/rpcore \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/rplibs \
    ${CONDA_PREFIX}/lib/python3.7/site-packages/rpplugins

pip uninstall --yes \
    attrs \
    httplib2 \
    idna \
    jsonschema \
    oauth2 \
    py-ubjson \
    pyrsistent \
    six
