#!/bin/perl

open FILE, $ARGV[0] or die "Could not open $ARGV[0]\n";
my @scored_values = <FILE>;
#close <FILE>;

print "$scored_values[0]\n";
print "$scored_values[1]\n";
# while ($line=(<FILE>){
# 		chomp $line;
# 		my @linearray = split(" ", $line);
# 		print "$linearray[1]\n";
# 		}
# 		
# while ( <FILE> ) {
#     print if /^abc:/;
#     $count++ if /^abc/;
# }
# print "Matched $count times\n";
#     		
    		
    		
    		# foreach my $i (@linearray) {
#     			print $i;
# 				if ($i=~m/^$word$/i){
# 					print "Verb $word matches word $i in category $type\n";
# 					open(MYOUTFILE, ">> autogen_matches.txt");
# 					print MYOUTFILE "$word, $type\n";
# 					close(MYOUTFILE);		