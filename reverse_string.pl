#!/usr/bin/perl 


print "Enter the string :";

my $my_string = <STDIN>;
chomp($my_string);

my $string1 = reverse($my_string);

print "the reverse string is :$string1\n";
