#!/usr/bin/perl



use strict;
use warnings;


print "Enter the student filename:";

chomp(my $studentfile = <STDIN>);

open(my $in, "<", $studentfile) or die "Cannot open students.txt: $!";


open(my $out, ">", "updated_students.txt") or die "Cannot open updated_students.txt: $!";


print $out "StudentID,Name,Grade,Status\n";


while (my $line = <$in>) {
    chomp $line;
    my ($student_id, $name, $grade) = split(/,/, $line); 

   
    my $status = ($grade >= 50) ? "Pass" : "Fail";

    
    print $out "$student_id,$name,$grade,$status\n";
}

close $in;
close $out;

print "Data has been updated and written to updated_students.txt\n";

