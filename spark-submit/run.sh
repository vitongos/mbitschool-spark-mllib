#!/bin/bash

while getopts a: option
do
	case "${option}"
	in
	a) APP=${OPTARG};;
	esac
done

docker run --rm --network dockersparkcluster_spark-network -p "4040:4040" --env APP="$APP" spark-submit:2.3.1
## -v "./samples/source":/opt/spark-apps -v "./samples/data":/opt/spark-data
