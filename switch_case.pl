#!/usr/bin/perl
use strict;
use warnings;
use Switch;

print "Enter the variable name: ";
chomp(my $variable = <STDIN>);

switch ($variable) {
    case "apple"  { print "You selected apple.\n"; }
    case "banana" { print "You selected banana.\n"; }
    case "orange" { print "You selected orange.\n"; }
    case "grape"  { print "You selected grape.\n"; }
    else          { print "Unknown selection: $variable\n"; }
}

