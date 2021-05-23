#!/bin/bash

source ~/.bashrc

GREEN='\033[0;32m'

printf "\n${GREEN}--------------------\nConfigure Environment Variables\n--------------------\n"

if [[ $ARROW_HOME == "" ]]
then
 echo 'adding ARROW_HOME to .bashrc'
 printf '\n#ARROW VARS\nexport ARROW_HOME=~/.arrow' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_HOME is already set'
fi

if [[ $LD_LIBRARY_PATH == "" ]]
then
 echo 'adding LD_LIBRARY_PATH to .bashrc'
 printf '\nexport LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ARROW_HOME}/lib' | tee -a ~/.bashrc
else
 echo 'LD_LIBRARY_PATH is already set'
fi

if [[ $R_LD_LIBRARY_PATH == "" ]]
then
 echo 'adding R_LD_LIBRARY_PATH to .bashrc'
 printf '\nexport R_LD_LIBRARY_PATH=${LD_LIBRARY_PATH}' | tee -a ~/.bashrc
else
 echo 'R_LD_LIBRARY_PATH is already set'
fi

if [[ $ARROW_R_DEV == "" ]]
then
 echo 'adding ARROW_R_DEV to .bashrc'
 printf '\nexport ARROW_R_DEV=true' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_R_DEV is already set'
fi

if [[ $PKG_CONFIG_PATH == "" ]]
then
 echo 'adding PKG_CONFIG_PATH to .bashrc'
 printf '\nexport PKG_CONFIG_PATH=${ARROW_HOME}/lib/pkgconfig' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'PKG_CONFIG_PATH is already set'
fi

if [[ $ARROW_WITH_BZ2 == "" ]]
then
 echo 'adding ARROW_WITH_BZ2 to .bashrc'
 printf '\nexport ARROW_WITH_BZ2=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_BZ2 is already set'
fi

if [[ $ARROW_WITH_ZLIB == "" ]]
then
 echo 'adding ARROW_WITH_ZLIB to .bashrc'
 printf '\nexport ARROW_WITH_ZLIB=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_ZLIB is already set'
fi

if [[ $ARROW_WITH_ZSTD == "" ]]
then
 echo 'adding ARROW_WITH_ZSTD to .bashrc'
 printf '\nexport ARROW_WITH_ZSTD=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_ZSTD is already set'
fi

if [[ $ARROW_WITH_LZ4 == "" ]]
then
 echo 'adding ARROW_WITH_LZ4 to .bashrc'
 printf '\nexport ARROW_WITH_LZ4=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_LZ4 is already set'
fi

if [[ $ARROW_WITH_BROTLI == "" ]]
then
 echo 'adding ARROW_WITH_BROTLI to .bashrc'
 printf '\nexport ARROW_WITH_BROTLI=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_BROTLI is already set'
fi

if [[ $ARROW_WITH_SNAPPY == "" ]]
then
 echo 'adding ARROW_WITH_SNAPPY to .bashrc'
 printf '\nexport ARROW_WITH_SNAPPY=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_SNAPPY is already set'
fi

if [[ $ARROW_BUILD_TESTS == "" ]]
then
 echo 'adding ARROW_BUILD_TESTS to .bashrc'
 printf '\nexport ARROW_BUILD_TESTS=OFF' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_BUILD_TESTS is already set'
fi

if [[ $ARROW_PARQUET == "" ]]
then
 echo 'adding ARROW_WITH_PARQUET to .bashrc'
 printf '\nexport ARROW_PARQUET=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_PARQUET is already set'
fi

if [[ $ARROW_WITH_PYTHON == "" ]]
then
 echo 'adding ARROW_PYTHON to .bashrc'
 printf '\nexport ARROW_WITH_PYTHON=OFF' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_WITH_PYTHON is already set'
fi

if [[ $ARROW_COMPUTE == "" ]]
then
 echo 'adding ARROW_COMPUTE to .bashrc'
 printf '\nexport ARROW_COMPUTE=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_COMPUTE is already set'
fi

if [[ $ARROW_CSV == "" ]]
then
 echo 'adding ARROW_CSV to .bashrc'
 printf '\nexport ARROW_CSV=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_CSV is already set'
fi

if [[ $ARROW_DATASET == "" ]]
then
 echo 'adding ARROW_DATASET to .bashrc'
 printf '\nexport ARROW_DATASET=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_DATASET is already set'
fi

if [[ $ARROW_FILESYSTEM == "" ]]
then
 echo 'adding ARROW_FILESYSTEM to .bashrc'
 printf '\nexport ARROW_FILESYSTEM=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_FILESYSTEM is already set'
fi

if [[ $ARROW_JEMALLOC == "" ]]
then
 echo 'adding ARROW_JEMALLOC to .bashrc'
 printf '\nexport ARROW_JEMALLOC=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_JEMALLOC is already set'
fi

if [[ $ARROW_JSON == "" ]]
then
 echo 'adding ARROW_JSON to .bashrc'
 printf '\nexport ARROW_JSON=ON' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_JSON is already set'
fi

if [[ $CMAKE_BUILD_TYPE == "" ]]
then
 echo 'adding CMAKE_BUILD_TYPE to .bashrc'
 printf '\nexport CMAKE_BUILD_TYPE=release' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'CMAKE_BUILD_TYPE is already set'
fi

if [[ $ARROW_INSTALL_NAME_RPATH == "" ]]
then
 echo 'adding ARROW_INSTALL_NAME_RPATH to .bashrc'
 printf '\nexport ARROW_INSTALL_NAME_RPATH=OFF' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_INSTALL_NAME_RPATH is already set'
fi

if [[ $ARROW_S3 == "" ]]
then
 echo 'adding ARROW_S3 to .bashrc'
 printf '\nexport ARROW_S3=OFF' | tee -a ~/.bashrc
 echo '\n'
else
 echo 'ARROW_S3 is already set'
fi

# verify env vars
source ~/.bashrc

echo $ARROW_HOME
echo $LD_LIBRARY_PATH
echo $ARROW_R_DEV
echo $PKG_CONFIG_PATH
echo $ARROW_WITH_BZ2
echo $ARROW_WITH_ZLIB
echo $ARROW_WITH_ZSTD
echo $ARROW_WITH_LZ4
echo $ARROW_WITH_BROTLI
echo $ARROW_WITH_SNAPPY
echo $ARROW_WITH_PARQUET
echo $ARROW_WITH_PYTHON
echo $ARROW_BUILD_TESTS
echo $ARROW_COMPUTE
echo $ARROW_CSV
echo $ARROW_DATASET
echo $ARROW_FILESYSTEM
echo $ARROW_JEMALLOC
echo $ARROW_JSON
echo $CMAKE_BUILD_TYPE
echo $ARROW_INSTALL_NAME_RPATH
echo $ARROW_S3

printf "\n${GREEN}--------------------\nBuild Arrow Library\n--------------------\n"

export MAKEFLAGS="-j$(grep -c ^processor /proc/cpuinfo)"
mkdir -p ../cpp/build && pushd ../cpp/build

# configure the build using ninja
# see https://arrow.apache.org/docs/developers/cpp/building.html#faster-builds-with-ninja
# no S3 AWS SDK support
cmake -DCMAKE_INSTALL_PREFIX=$ARROW_HOME \
 -DCMAKE_INSTALL_LIBDIR=lib \
 -DARROW_WITH_BZ2=$ARROW_WITH_BZ2 \
 -DARROW_WITH_ZLIB=$ARROW_WITH_ZLIB \
 -DARROW_WITH_ZSTD=$ARROW_WITH_ZSTD \
 -DARROW_WITH_LZ4=$ARROW_WITH_LZ4 \
 -DARROW_WITH_SNAPPY=$ARROW_WITH_SNAPPY \
 -DARROW_WITH_BROTLI=$ARROW_WITH_BROTLI \
 -DARROW_PARQUET=$ARROW_PARQUET \
 -DARROW_PYTHON=$ARROW_PYTHON \
 -DARROW_BUILD_TESTS=$ARROW_BUILD_TESTS \
 -DARROW_COMPUTE=$ARROW_COMPUTE \
 -DARROW_CSV=$ARROW_CSV \
 -DARROW_DATASET=$ARROW_DATASET \
 -DARROW_FILESYSTEM=$ARROW_FILESYSTEM \
 -DARROW_JEMALLOC=$ARROW_JEMALLOC \
 -DARROW_JSON=$ARROW_JSON \
 -DCMAKE_BUILD_TYPE=$CMAKE_BUILD_TYPE \
 -DARROW_INSTALL_NAME_RPATH=$ARROW_INSTALL_NAME_RPATH \
 -DARROW_S3=$ARROW_S3 \
 -GNinja \
 ..

cmake --build . --target install

pushd ../../r

printf "\n${GREEN}--------------------\nBuild Arrow R Package\n--------------------\n"

Rscript -e "
options(repos = 'https://cloud.r-project.org/')
if (!require('assertthat'))  install.packages('assertthat')
if (!require('bit64'))       install.packages('bit64')
if (!require('purrr'))       install.packages('purrr')
if (!require('R6'))          install.packages('R6')
if (!require('rlang'))       install.packages('rlang')
if (!require('tidyselect'))  install.packages('tidyselect')
if (!require('vctrs'))       install.packages('vctrs')
if (!require('cpp11'))       install.packages('cpp11')
if (!require('decor'))       install.packages('decor')
"

make clean && R CMD INSTALL . && make test
