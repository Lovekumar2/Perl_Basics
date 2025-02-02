#!/usr/bin/perl
use strict;
use warnings;



print "Enter the file name: ";

chomp(my $filename = <STDIN>);

open(my $fh , '<',$filename ) or die "Could not open file '$filename': $!";;

while (my $line = <$fh>){

print "$line";

}
close($fh);
