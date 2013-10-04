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

for n in $#
	do
		wget -O job{$n}.html $1 && echo "Download of " $1 " successful" || echo "Download failed for " $i 
	done

# while read -r -a resumeArray
# do
# 	for i in $resumeArray
# 	do
# 		echo $i
# 	done
# done < job{$n}.html

for i in ls job*.html
do	
	perl test.pl $i #resume_template.pl	$i
done
	

#http://inflection.com/careers/information-technology--senior-linux-system-administrator-jobs.html


