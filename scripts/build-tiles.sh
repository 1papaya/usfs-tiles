#!/bin/bash

rm -rf docs/
mkdir -p docs/

./bin/tippecanoe --drop-densest-as-needed \
    --force \
    --read-parallel \
    --no-tile-compression \
    --output-to-directory="docs/" \
    --maximum-zoom=13 \
    data/roads.geojson \
    data/trails.geojson