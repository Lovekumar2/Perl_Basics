#!/usr/bin/perl
use strict;
use warnings;


my %skills = (
    "Unix"   => 5,
    "Perl"   => 4,
    "Python" => 2,
    "Java"   => 1,
);


my @keys   = keys %skills;
my @values = values %skills;

print "Keys:\n";
print join(", ", @keys), "\n";


print "Values:\n";
print join(", ", @values), "\n";

