#!/usr/bin/perl
use strict;
use warnings;
print "Enter the name of file:";
chomp(my $filename = <STDIN>);

open(my $in, "<", $filename) or die "Cannot open input.txt: $!";


my %unique_words;


while (my $line = <$in>) {
    chomp $line;                          
    my @words = split(/\s+/, $line);     
    $unique_words{$_} = 1 for @words;    
}

close $in; 

open(my $out, ">", "output.txt") or die "Cannot open output.txt: $!";

foreach my $word (sort keys %unique_words) {
    print $out "$word\n";
}

close $out; 


my $unique_count = keys %unique_words;
print "Number of unique words: $unique_count\n";

