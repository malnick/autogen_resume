#!/bin/perl
use warnings;
use IO;

my $file = IO::File->new("<$ARGV[0]");
foreach($file->getlines){
	#print "$_\n";
	my @line = split(/\ /,$_);
	print "@line\n";
	print "$line[0]\n";
	print "$line[1]\n";
	print "$line[2]\n";
	} $file->close;



#open FILE, $ARGV[0] or die "Could not open $ARGV[0]\n";
# my @score_array = ();
# while(<FILE>) { 
# 	chomp; 
# 	push(@score_array, $_);
# 	foreach my $i (@score_array){
# 		print "$i\n";
# 		my @line = split(',',$i); 
# 		}
# 	#print "@score_array\n";
# 	}
#close(FILE);


