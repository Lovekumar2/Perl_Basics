#!/usr/bin/perl
use strict;
use warnings;

print "Enter the filename to read: ";
chomp(my $filename = <STDIN>);

open(my $fh, '<', $filename) or die "Could not open file '$filename': $!";
my $count = 0;
while (my $line=<$fh>) {
chomp($line);
    print "$line\n";
    $count++ if $line ne ''; 
}
print "$count \n";
close($fh);
