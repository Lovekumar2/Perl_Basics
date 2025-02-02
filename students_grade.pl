#!/usr/bin/perl

use strict;
use warnings;

my %students = (

     "ritesh" => [89, 65,78,66],
     "tanay" => [67, 65,87, 76],
     "kuldeep" => [69, 90, 80,70],
     "ranjeet"=> [79, 98, 88, 77],
);
#perticular for inividual students 
my $student = "ritesh";
#this is for all students 
print "grad of $student : is = @{$students{$student}}\n";

foreach my $student (keys %students){

print "grades for $student : @{$students{$student}}\n";

}

my @keys = keys %students;
my @values = values %students;

print "Keys: @keys\n";
print "Values: @{values}\n";
