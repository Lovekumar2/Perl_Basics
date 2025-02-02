use strict;
use warnings;
print "enter the file name :";
chomp(my $filename = <STDIN>);  
open(my $fh, '<', $filename) or die "Cannot open file: $!";

my @inputs;
my @outputs;

while (my $line = <$fh>) {
    chomp $line;
    if ($line =~ /input\s+(?:\[.*?\]\s*)?([\w,\s]+)/) {
        push @inputs, split /\s*,\s*/, $1;
    }
    if ($line =~ /output\s+(?:\[.*?\]\s*)?([\w,\s]+)/) {
        push @outputs, split /\s*,\s*/, $1;
    }
}

close($fh);

print "Inputs: " . join(", ", @inputs) . "\n";
print "Outputs: " . join(", ", @outputs) . "\n";

