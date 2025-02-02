#!/usr/bin/perl

print "Enter the number:";
my $num1 =<STDIN>;
chomp($num1);

if ($num1%2 == 0){

print "the number even\n";
}
else {
print "the number is odd\n ";
}
