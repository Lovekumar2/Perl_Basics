
#!/usr/bin/perl

use strict;
use warnings;

my %mobiles = (
    'Mobile1' => { price => 20000, camera => '48MP', bluetooth => '5.0', battery => '5000mAh', processor => 'Snapdragon 7', display => '6.5-inch AMOLED' },
    'Mobile2' => { price => 22000, camera => '50MP', bluetooth => '5.1', battery => '4500mAh', processor => 'Dimensity 7', display => '6.4-inch AMOLED' },
    'Mobile3' => { price => 25000, camera => '64MP', bluetooth => '5.2', battery => '6000mAh', processor => 'Snapdragon 8', display => '6.7-inch AMOLED' },
    'Mobile4' => { price => 28000, camera => '108MP', bluetooth => '5.3', battery => '4800mAh', processor => 'Exynos 2100', display => '6.6-inch AMOLED' },
    'Mobile5' => { price => 30000, camera => '50MP', bluetooth => '5.1', battery => '5000mAh', processor => 'Snapdragon 8 Gen 1', display => '6.8-inch AMOLED' },
    'Mobile6' => { price => 32000, camera => '200MP', bluetooth => '5.3', battery => '4500mAh', processor => 'Snapdragon 8 Gen 2', display => '6.7-inch AMOLED' },
    'Mobile7' => { price => 35000, camera => '108MP', bluetooth => '5.2', battery => '4700mAh', processor => 'Dimensity 1200', display => '6.5-inch AMOLED' },
    'Mobile8' => { price => 40000, camera => '50MP', bluetooth => '5.0', battery => '4500mAh', processor => 'A15 Bionic', display => '6.1-inch Super Retina' },
    'Mobile9' => { price => 45000, camera => '48MP', bluetooth => '5.2', battery => '4400mAh', processor => 'Kirin 9000', display => '6.7-inch OLED' },
    'Mobile10' => { price => 50000, camera => '200MP', bluetooth => '5.3', battery => '5000mAh', processor => 'Snapdragon 8', display => '6.9-inch AMOLED' },
);

#  print in ascending order of price
print "\nMobiles in Ascending Order of Price:\n";
foreach my $mobile (sort { $mobiles{$a}{price} <=> $mobiles{$b}{price} } keys %mobiles) {
    print "$mobile: ";
    foreach my $spec (keys %{ $mobiles{$mobile} }) {
        print "$spec => $mobiles{$mobile}{$spec}, ";
    }
    print "\n";
}

# print in descending order of price
print "\nMobiles in Descending Order of Price:\n";
foreach my $mobile (sort { $mobiles{$b}{price} <=> $mobiles{$a}{price} } keys %mobiles) {
    print "$mobile: ";
    foreach my $spec (keys %{ $mobiles{$mobile} }) {
        print "$spec => $mobiles{$mobile}{$spec}, ";
    }
    print "\n";
}

