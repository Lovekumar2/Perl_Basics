#!/usr/bin/perl


print "enter the number :";
my $num1 = <STDIN>;
chomp($num1);

my $fact = 1;
while ($num1){

$fact*=$num1;
$num1--;

}

print "factorial is = $fact\n";


