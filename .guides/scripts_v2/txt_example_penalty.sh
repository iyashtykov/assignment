#!/bin/bash
set -e

env

POINTS=$(( ( RANDOM % 100 )  + 1 ))
PENALTY=$(( ( RANDOM % 100 )  + 1 ))
curl --retry 3 -s "$CODIO_AUTOGRADE_V2_URL" -d grade=$POINTS -d format=txt -d feedback='Simple text here' -d penalty=$PENALTY