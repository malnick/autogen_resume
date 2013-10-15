#!/bin/perl

open FILE, $ARGV[0] or die "Could not open $ARGV[0]\n";
my @score_array = ();
while(<FILE>) { chomp; push(@score_array, $_);}
close(FILE);

foreach my $i (@score_array){
	chomp;
	my @line = split(',',$i); 
	print "$i\n";
	print "$line[2]\n";
	}
