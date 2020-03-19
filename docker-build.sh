#!/bin/bash

image_tag=(`cat gradle.properties | grep "cas.version" | cut -d= -f2`)

echo "Building CAS docker image tagged as [$image_tag]"
# read -p "Press [Enter] to continue..." any_key;

docker build --tag="egeos/cas:$image_tag" . \
  && echo "Built CAS image successfully tagged as epsilonsec/cas:$image_tag" \
  && docker images "egeos/cas:$image_tag"
