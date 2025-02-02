#!/usr/bin/perl
use strict;
use warnings;


sub area_reactangle {

my ($length,$width) = @_;

return $length*$width;


}
print "enter the length:";

chomp(my $length = <STDIN>);
print "enter the width: ";
chomp(my $width  = <STDIN>);
my $area =  area_reactangle($length , $width);
print "area of rectangle is : $area\n";
