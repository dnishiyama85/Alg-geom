#!/bin/bash
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
root_dir=$(realpath ${script_dir}/..)
image_name=alg-geom
set -x
docker run --rm --name ${image_name} -it --user=`id -u ${USER}` -w=/root -v ${root_dir}:/root alg-geom /bin/bash -c "latexmk -pvc src/main.tex"

