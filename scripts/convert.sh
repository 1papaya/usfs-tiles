#!/bin/bash

cd data/

lyr="S_USA.RoadCore_FS"

mapshaper "${lyr}/${lyr}.shp" \
    -explode \
    -o force precision=0.0000001 ndjson "${lyr}/${lyr}.geojson" 

lyr="S_USA.TrailNFS_Publish"

mapshaper "${lyr}/${lyr}.shp" \
    -explode \
    -o force precision=0.0000001 ndjson "${lyr}/${lyr}.geojson"
