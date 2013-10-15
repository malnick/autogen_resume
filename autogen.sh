#!/bin/sh
# Auto generate resume based on perl dict and template resume file
# Jeff Malnick
# October 3 2013
#
# Dependancies:
#
# 	Template Toolkit: http://template-toolkit.org/download/
#
# Use:
#
#	./autogen.sh www.url.to.your.job.description.com
#
# Fork and contribute!
#
#	https://github.com/malnick/autogen_resume
#
#########################################################################################

FILENAME=$(echo $1 | cut -d/ -f1- | cut -d. -f2)
f=$FILENAME{$n}.html

for n in $#
	do
		wget -O $f $1 && echo "Download of " $1 " successful" || echo "Download failed for " $1
	done && perl resume_template.pl $f || echo "Can't open perl script"	

sleep 3

if [ -e autogen_matches.txt ]
then
	while read line
	do
		uc=$(echo $line)
    	echo  $uc $(grep -i "$uc" autogen_matches.txt | wc -l) 
	done < autogen_matches.txt | sort | uniq  > score_values.txt || echo "Something is broken, figure it out"
fi
rm autogen_matches.txt
sleep 1

# while read -a line
# do
# 	echo "${line[2]} matches for ${line[0]}" 
# 	
# done < score_values.txt
# 
# for highscore in score_values.txt
# 	do
		


if [ -e score_values.txt ]
then
	perl score_job.pl score_values.txt || echo "You're probably missing the score_job.pl file"
fi




#http://inflection.com/careers/information-technology--senior-linux-system-administrator-jobs.html


