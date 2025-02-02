#!/usr/bin/perl
use strict;
use warnings;

print "enter the file name :";
chomp(my $file = <STDIN>);

open(my $fh, "<", $file) or die "Could not open file '$file': $!";

while (my $line = <$fh>) {
    chomp $line; 
    my @fields = split /,/, $line;
    print join(" | ", @fields), "\n";
}
close($fh);

