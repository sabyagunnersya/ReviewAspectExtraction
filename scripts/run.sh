#!/usr/bin/env bash

[ -z "$1" ] && echo $'Usage: \n1: Run From project root. \n2: ./scripts/run.sh <Path of directory which contains 3 files, positive.txt, negative.txt, reviews.txt>' && exit 1

mvn clean install assembly:single
java -jar ReviewAspectExtraction-0.0.1-SNAPSHOT-jar-with-dependencies.jar $1