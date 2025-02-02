#!/usr/bin/perl
use strict;
use warnings;

# Check if the file is provided as an argument
if (@ARGV != 1) {
    die "Usage: $0 <RTL file>\n";
}

my $file = $ARGV[0];
open(my $fh, '<', $file) or die "Cannot open file: $file\n";

my %modules;
my %instances;
my @lines;

# First pass: Collect all module definitions
while (my $line = <$fh>) {
    chomp $line;
    push @lines, $line;
    if ($line =~ /\bmodule\s+(\w+)/) {
        my $mod_name = $1;
        $modules{$mod_name} = 1;
    }
}

close($fh);

# Second pass: Detect module instantiations
foreach my $line (@lines) {
    foreach my $mod_name (keys %modules) {
        if ($line =~ /\b$mod_name\s+(\w+)\s*\(/) {
            $instances{$mod_name}++;
        }
    }
}

# Print the count of modules
print "Modules defined in RTL file:\n";
foreach my $mod (keys %modules) {
    print "Module: $mod\n";
}

# Print the count of module instances
print "\nInstances of each module:\n";
foreach my $mod (keys %instances) {
    print "$mod: $instances{$mod}\n";
}

