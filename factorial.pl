#!/usr/bin/perl

print "Enter the number :";
my $num1 = <STDIN>;
chomp($num1);

my $fact=1;
for (my $i = 1; $i<=$num1; $i++){

   $fact *= $i;
}
print "the factorial is = $fact\n";
