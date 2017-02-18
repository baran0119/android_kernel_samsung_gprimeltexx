#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=...
outDir="../output"

# always clean build
if [ -d ${outDir} ]; then
	rm -fr ${outDir}
fi

mkdir ${outDir}

make -C $(pwd) O=${outDir} lineageos_gprimeltexx_defconfig
time make -j4 -C $(pwd) O=${outDir}
