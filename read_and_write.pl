#!/usr/bin/perl
use strict;
use warnings;

print "enter the file name :";
chomp(my $file1 = <STDIN>);
print "enter the output file name:";
chomp(my $out_file = <STDIN>);


open(my $fh , '<' ,$file1) or die "could not open file '$file1':$!";

my @lines = <$fh>;
close($fh);


open (my $out_1 ,'>',$out_file) or die "could not open file '$out_file':$!";

print $out_1 @lines;
close($out_1);

print "the contents of $file1 have been sved to $out_file.\n";


