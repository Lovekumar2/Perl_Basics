#!/usr/bin/perl

use strict;
use warnings;

my @arr1 = (
    {
        name  => "love",
        score => { math => 92, English => 86, physics => 90 },
    },
    {
        name  => "Kuldeep",
        score => { math => 94, English => 91, physics => 88 },
    },
    {
        name  => "tanay",
        score => { math => 82, English => 76, physics => 95 },
    },
    {
        name  => "ranjeet",
        score => { math => 93, English => 81, physics => 86 },
    },
);

foreach my $student (@arr1) {
    print "Name:$student->{name}\n";
    print "Scores:\n";
    foreach my $subject (keys %{ $student->{score} }) {
        print "  $subject: $student->{score}{$subject}\n";
    }
    print "\n";
}

