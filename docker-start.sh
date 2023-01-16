#!/bin/sh

docker run -d -v $PWD:/86Box --name 86box-build 86box-build:latest sleep infinity
