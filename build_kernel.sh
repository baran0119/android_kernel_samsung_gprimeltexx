#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=...
outDir="../output"

# always clean build
if [ -d ${outDir} ]; then
	rm -fr ${outDir}
fi

mkdir ${outDir}

make -C $(pwd) O=${outDir} msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_fortuna_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
time make -j4 -C $(pwd) O=${outDir}
