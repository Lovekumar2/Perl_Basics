#!/usr/bin/perl

use strict;
use warnings;

print "ENTER The First number :";
my $num_1 = <STDIN>;
chomp($num_1);

print "ENTER The Second number :";
my $num_2 = <STDIN>;


my $difference = $num_1 - $num_2;
my $sum = $num_1 + $num_2;
my $multiplication = $num_1 * $num_2;
my $quotient = $num_2 != 0 ?$num_1/$num_2:"undefined"; 

print " sum = $sum\n";
print "difference = $difference\n";
print " multiplication = $multiplication\n";
print " quotient = $quotient\n";
