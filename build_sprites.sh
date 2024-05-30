#!/bin/bash

mkdir -p ./temp
wget -P ./temp https://github.com/flother/spreet/releases/download/v0.11.0/spreet-x86_64-unknown-linux-musl.tar.gz
tar -xzvf ./temp/spreet-x86_64-unknown-linux-musl.tar.gz -C ./temp
./temp/spreet --unique --minify-index-file --recursive ./svgs ./sprites/osm-liberty
./temp/spreet --unique --minify-index-file --recursive --retina ./svgs ./sprites/osm-liberty@2x
rm -r temp
