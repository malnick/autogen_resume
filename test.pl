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
		
for $key ( keys %adverbs ) {
    print "$key:\n";
    for $word (0 .. $#{$adverbs{$key}}){
    	print "$word = $adverbs{$key}[$word]\n";
    	}
    print "\n";
    

}
