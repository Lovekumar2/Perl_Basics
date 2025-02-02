#!/usr/bin/perl

use warnings;
use strict;




print "Enter the file name :";


chomp(my $filename = <STDIN>);

print "Enter the word you want to search:";
chomp(my $word = <STDIN>);

open(my $fh , '<', $filename) or die "coudn't open this '$filename' :$! ";

my @lines = <$fh>;

close($fh);

my $count = 0;

foreach my $line (@lines) {

  $line =~ /\b\Q$word\E\b/gi ;
   $count++;
}


open(my $fh_out , '>>', $filename) or die "Error: Cannot open file for writing: $!\n";

print $fh_out "\n Word : $word || and count :$count\n";
close($fh_out);

print "The word '$word' was found $count times. The count has been added to the file.\n";


