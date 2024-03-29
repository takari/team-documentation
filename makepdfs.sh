#!/bin/bash

# fail if anything errors
set -e
# fail if a function call is missing an argument
set -u

baseDir=`dirname $0`
outputDir=${baseDir}/pdf

exclude=('figures' 'figures-dia' 'figures-source' 'latex' 'makepdfs' 'pdf' 'README.markdown')
dirContent=`ls $baseDir`
argString=""


for dir in $dirContent; do
	if [ -n $dir ]; then
		
		isLang=1
		for i in ${exclude[@]}; do
			if [ $i == $dir ]; then
				isLang=0
			fi
		done
		
		if [ $isLang -eq 1 ]; then
			if [ "$1" = "" ]; then
				argString="${argString} ${dir}"
			else
				for i in ${@}; do
					if [ $i = $dir ]; then
						argString="${argString} ${dir}"
					fi
				done
			fi
		fi
	fi
done

echo "Will generate pdf for the following languages:"
echo "	"$argString

mkdir -p $outputDir

echo 
echo "The generation process will start now."
time ${baseDir}/latex/makepdf $argString

echo
echo
echo "Done!"
