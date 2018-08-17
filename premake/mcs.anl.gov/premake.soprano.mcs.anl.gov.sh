#!/bin/bash
/homes/qadwu/work/projects/ospray/premake.sh  \
    --mpi \
    -i /homes/qadwu/work/builds/soprano/ospray/gcc6.2.0/install/ \
    -o /homes/qadwu/work/builds/soprano/ospray/gcc6.2.0/build/ \
    --gcc --embree-dir "/homes/qadwu/work/softwares/embree-3.2.0.x86_64.linux" \
    --tbb-dir "/homes/qadwu/work/softwares/tbb2018_20171205oss" \
    --ispc-dir "/homes/qadwu/work/softwares/ispc-v1.9.2-linux" \
    --icc-dir "" \
    --gcc-dir "/soft/apps/packages/gcc/gcc-6.2.0/bin" \
    --cmake-dir "cmake" \
    -a "-D Snappy_DIR=/nfs2/qadwu/work/builds/soprano/snappy/gcc6.2.0/install/lib/cmake/Snappy "
