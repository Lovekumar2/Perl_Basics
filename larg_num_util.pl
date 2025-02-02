#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw(max);

my @array = (5,4,6,7,9,3,18);


my $my_largest_num = max(@array);

print "the largest number in array is : $my_largest_num\n";




