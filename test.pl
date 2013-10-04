#use warnings;
my $job_description = $ARGV[0];
# define template variables for replacement
my %adverbs = (
		communication => ['Advocated', 'Clarified', 'Corresponded', 'Encouraged', 'Interpreted', 'Negotiated', 'Persuaded', 'Presented', 'Publicized', 'Solicited', 'Spoke', 'Translated'],
		creative => ['Acted', 'Applied', 'Composed', 'Created', 'Established', 'Founded', 'Improvised', 'Introduced', 'Navigated', 'Originated', 'Presented'],
		data => ['Adjusted', 'Allocated', 'Budgeted', 'Compared', 'Computed', 'Counted', 'Documented', 'Estimated', 'Forecasted', 'Inventoried', 'Invested', 'Predicted', 'Projected', 'Quantified', 'Recorded', 'Retrieved', 'Verified'],
		help => ['Aided', 'Assisted', 'Built', 'Demonstrated', 'Facilitated', 'Familiarized', 'Helped', 'Performed', 'Represented', 'Solved', 'Supported', 'Trained', 'Upheld', 'Volunteered', 'Worked'],
		leadership => ['Achieved', 'Administered', 'Assigned', 'Attained', 'Challenged', 'Coordinated', 'Decided', 'Delegated', 'Established', 'Executed', 'Handled', 'Headed', 'Implemented', 'Incorporated', 'Intervened', 'Launched', 'Led', 'Managed', 'Mediated', 'Motivated', 'Organized', 'Oversaw', 'Planned', 'Prioritized', 'Recommended', 'Scheduled', 'Supervised', 'United'],
		efficient => ['Accelerated', 'Allocated', 'Boosted', 'Centralized', 'Downsized', 'Edited', 'Eliminated', 'Enhanced', 'Expanded', 'Expedited', 'Heightened', 'Lessened', 'Leveraged', 'Maximized', 'Merged', 'Optimized', 'Outlined', 'Outsourced', 'Prevented', 'Prioritized', 'Reorganized', 'Reduced', 'Revised', 'Simplified', 'Standardized', 'Stream-lined', 'Synthesized', 'Systematized', 'Upgraded'],
		technical => ['Analyzed', 'Assembled', 'Built', 'Calculated', 'Computed', 'Conducted', 'Designed', 'Devised', 'Engineered', 'Maintained', 'Operated', 'Programmed', 'Reengineered', 'Remodeled', 'Transmitted'],
		skills => ['Ruby', 'Perl', 'Python', 'Java', 'Puppet', 'Linux', 'Red Hat', 'RHEL', 'Debian', 'Ubuntu', 'Shell', 'Bash'],
		);

# Get job description and load into array for comparison 

# print "argument: $ARGV[0]\n";
# open(my $file, '<', $job_description) or die "Could not open $job_description\n";
# my @job_array;
# while (my $line = <$file>){
# 	chomp $line;
# 	my @linearray = split(" ", $line);
# 	push(@job_array, @linearray);
# 	}
# close($file);
# 
# for $i (@job_array){
# 	print "@$i\n";
# 	}

#Access loop for individual words in hash of adverbs
for $type ( keys %adverbs ) {
    #print "$type:\n";
    for $word (0 .. $#{$adverbs{$type}}){
    	#print "$word = $adverbs{$type}[$word]\n";
    	$word = $adverbs{$type}[$word];
    	#print "$word\n";
    	open FILE, $ARGV[0] or die "Could not open $job_description\n";
    	while ($line=<FILE>){
    		chomp $line;
    		my @linearray = split(" ", $line);
    		foreach my $i (@linearray) {
    			#print $i;
				if ($i=~m/$word/i){
					print "Verb $word matches word $i\n";
					#print "$i is a match\n";
				}
			}
		}
    }
}