#!/usr/bin/perl
use strict;
use warnings;

my %skills = (
    "Unix"   => 5,
    "Perl"   => 4,
    "Python" => 2,
    "Java"   => 1,
);


sub check_key_value {
    my ($key, $value) = @_;
    if (exists $skills{$key} && $skills{$key} == $value) {
        print "The key-value pair '$key => $value' is present in the hash.\n";
    } else {
        print "The key-value pair '$key => $value' is NOT present in the hash.\n";
    }
}


check_key_value("Unix", 5);  
check_key_value("Python", 3); 
check_key_value("Ruby", 2);  
