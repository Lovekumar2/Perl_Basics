#!/usr/bin /perl


print "Enter the string name:";

chomp(my $string = <STDIN>);


my $rever = reverse($string);


if($rever eq $string) {

 print "the string is palindrome\n";

}
else {


print "string is not palindrome\n";

}
