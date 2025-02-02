#!/usr/bin/perl 

my @array = ("love", 3, 4, "rithik", 4, 5);


 print "arrays are :@array\n ";

unshift(@array,"tanay");

 print "add a string at begning arrays are :@array\n ";

push(@array,"ranjeet");

 print "pushed arrays are :@array\n ";
my $num1 = scalar(@array);

print "the number of elements in the array: $num1\n";
