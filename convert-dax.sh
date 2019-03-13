#!/bin/sh

cd /wfdir

cmdname=""
if [ $1 = "-c" ] ; then
	cmdname="$2"
	shift 
	shift 
fi
echo "DAX generator arguments: $@"
echo "Command name in the generated workflow.json: $cmdname"


./dax-generator "$@"
/hyperflow/hflow-convert-dax dax.xml $cmdname > workflow.json
