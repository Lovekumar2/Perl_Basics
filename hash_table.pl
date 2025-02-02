#!/usr/bin/perl
use strict;
use warnings;


sub hash_table {

 my ($student_hash_ref) = @_;

  print "+------------+----------------+\n";
  print "| Student ID | Name           |\n";
  print "+------------+----------------+\n";

foreach my $student_id (sort keys %{$student_hash_ref}) {

    printf "| %-10s | %-14s |\n", $student_id, $student_hash_ref->{$student_id};
}
 print "+------------+----------------+\n";
}

my %students = (

      100 => "love",
      101 => "ritesh",
      103 => "kuldeep",
      104 => "rithik",
      

);

hash_table(\%students);

