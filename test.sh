#!/bin/bash

# 文件夹
fold=models/bac_mono;
if [ $1 ]; then
fold=$1;
fi

# 文件
file=scene.gltf;
if [ $2 ]; then
file=$2;
fi

# 输出
output=out.gltf;
if [ $3 ]; then
output=$3;
fi


echo "npx gltfpack -i $fold/$file -o $fold/$output -noq -v -km -kn";

# npx gltfpack -i $fold/$file -o $fold/$output -noq -cf -v
npx gltfpack -i $fold/$file -o $fold/$output -noq -v -km -kn

echo "__FINISH__";
read;
