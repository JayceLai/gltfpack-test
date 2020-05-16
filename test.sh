#!/bin/bash

fold=bac_mono;
if [ $1 ]; then
fold=$1;
fi

file=scene.gltf;
if [ $2 ]; then
file=$2;
fi

output=out.gltf;
if [ $3 ]; then
output=$3;
fi


echo "npx gltfpack -i $fold/$file -o $fold/$output -noq -cf -v";

# npx gltfpack -i $fold/$file -o $fold/$output -noq -cf -v
npx gltfpack -i $fold/$file -o $fold/$output -noq -v

echo "__FINISH__";
read;
