#!/bin/sh
# Auto generate resume based on perl dict and template resume file
# Jeff Malnick
# October 3 2013
#
# Dependancies:
#
# 	Template Toolkit: http://template-toolkit.org/download/
#
#####

FILENAME=$(echo $1 | cut -d/ -f1- | cut -d. -f2)

for n in $#
	do
		wget -O $FILENAME{$n}.html $1 && echo "Download of " $1 " successful" || echo "Download failed for " $i 
	done

for i in ls $FILENAME{$n}.html
do	
	perl resume_template.pl	$i
done && mv autogen_matches.txt $FILENAME_matches.log
	

#http://inflection.com/careers/information-technology--senior-linux-system-administrator-jobs.html


