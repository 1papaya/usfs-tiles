#!/bin/bash

road="S_USA.RoadCore_FS"
trail="S_USA.TrailNFS_Publish"

lyrs=( "$road" "$trail" )

mkdir -p data/
cd data

for lyr in "${lyrs[@]}"
do
    echo "${lyr}"

    mkdir -p ${lyr}
    wget --quiet --no-clobber -P "${lyr}" "https://data.fs.usda.gov/geodata/edw/edw_resources/shp/$lyr.zip"
    unzip -qq -n "${lyr}/${lyr}.zip" -d "${lyr}"
done
