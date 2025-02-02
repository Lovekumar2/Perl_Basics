#!/usr/bin/perl
use strict;
use warnings;

print "Give the starting point number: ";
chomp(my $num1 = <STDIN>);

print "Give the end point number: ";
chomp(my $num2 = <STDIN>);

if ($num1 < 2) {
    $num1 = 2;
}


for my $current ($num1 .. $num2) {
    my $is_prime = 1; 
    for my $i (2 .. sqrt($current)) {
        if ($current % $i == 0) {
            $is_prime = 0;
            last;
        }
    }
    if ($is_prime) {
        print "The number $current is prime\n";
    } else {
        print "The number $current is not prime\n";
    }
}

