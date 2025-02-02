#!/usr/bin/perl

use strict;
use warnings;

my %students = (
    "ritesh"  => [89, 65, 78, 66],
    "tanay"   => [67, 65, 87, 76],
    "kuldeep" => [69, 90, 80, 70],
    "ranjeet" => [79, 98, 88, 77],
);

foreach my $student (keys %students) {
    my $grades_ref = $students{$student};
    my @grades = @{$grades_ref};  # Dereference the array reference
    my $total = 0;
    my $count = 0;

    foreach my $grade (@grades) {
        $total += $grade;
      $count++;
    }

    my $average = $total / scalar(@grades);  # Correctly calculate the average

    printf "Student: %s, Average Grade: %.2f\n", $student, $average;
}

