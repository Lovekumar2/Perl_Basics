#!/usr/bin/perl


my @arr = (3,4,2,9,2,4);


my $largest = $arr[0];


foreach $num (@arr) {

if($num >$largest){
      $largest=$num;
}



}
print "thelargest number is = $largest\n";
